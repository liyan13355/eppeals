class CommentsController < ApplicationController
	before_action :require_login
	def index
		@comment = Comment.order(:id)
	end

	def create
		# @article_id = Article.find(params[:article_id]).id
		# @user = current_user.id	
		@comment = current_user.comments.new(comment_params)
		@comment.article_id = params[:article_id]
		if @comment.save
			redirect_to article_path(params[:article_id])
		else
			@comment.errors
			flash[:notice] = "Sorry, there is a temporary technical issue with our comments section."
		end
	end

	def show
		@comment= Comment.find(params[:id])
	end


	def destroy 
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to @comment
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update(comment_params)
			redirect_to comment_path(@comment)
		else
			render "edit"
		end
	end

	def edit 
			@comment = Comment.find(params[:id])
	end

	private
	def comment_params
		params.require(:comment).permit(:content)
	end
end