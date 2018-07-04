class CommentsController < ApplicationController
	def index
		@comment = Comment.order(:id)
	end


	def new
		@comment = Comment.new
		render template: "comments/new"
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to @comment

		else
			render "new"
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