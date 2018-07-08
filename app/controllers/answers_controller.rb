class AnswersController < ApplicationController
	before_action :require_login
	def index 
	end



	def create
		# @answer = current_user.answers.new(answer_params)
		@answer = Answer.new(answer_params)
		@answer.user_id = current_user.id
		@answer.query_id = params[:query_id]
		if @answer.save
			redirect_to wages_path

		else
			flash[:notice] = "Sorry, your answer was not successfully submitted. Try again? :)"

		end
	end

	def upvote
		
		@answer = Answer.find(params[:answer_id])
		@upvote_count = @answer.upvotes

		if @answer.update(upvotes: (@upvote_count + 1))
		
			redirect_to wages_path
		end

	end

	

	private
	def answer_params
		params.require(:answer).permit(:content)
	end



end
