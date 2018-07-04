class ArticlesController < ApplicationController
	def index
		@articles = Article.order(id: :desc)

		if params[:term]
			@articles = Article.search_by_title(params[:term])
		else
			@articles = Article.all
		end
	end

	def new
		if (!current_user || !current_user.lawyer? || !current_user.verified == true)
			redirect_to sign_up_path
			flash[:notice] = "Sorry, that action was not legit. Be a verified lawyer first."
		else
			@article = Article.new
			render template: "articles/new"
		end
	end

	def create
		if (!current_user || !current_user.lawyer? || !current_user.verified == true)
			redirect_to sign_up_path
			flash[:notice] = "Sorry, you cannot post an article because you\'re not a verified lawyer."
		else
			@article = current_user.articles.new(article_params)
		end

		if @article.save

			redirect_to article_path(@article.id)

		else
			render "new"
		end

	end

	def show
		@article= Article.find(params[:id])
		@author = User.find(@article.user_id)
		@comment = Comment.new
			
		@find_comments = Comment.where(article_id: params[:id])
		@comments = @find_comments.order(id: :desc)
	end


	def destroy 
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to new_article_path
	end

	def edit 
			@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to article_path(@article.id)
		else
			render "edit"
		end
	end


private
	def article_params
		params.require(:article).permit(:title, :content, :tag)
	end

end
