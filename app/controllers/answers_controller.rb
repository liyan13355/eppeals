class AnswersController < ApplicationController
	before_action :require_login
	def index 
	end



	def create
		# @answer = current_user.answers.new(answer_params)
		@answer = Answer.new(answer_params)
		@answer.user_id = current_user.id
		@answer.query_id = params[:query_id]
		@answer.save

		#not rerendering the page before because maybe it can be done with js/ajax? Difficult
		#to use with rails in controller because multiple pages utilise the same methods
		redirect_back
		
	end

	def upvote
		
		@answer = Answer.find(params[:answer_id])
		@upvote_count = @answer.upvotes

		@answer.update(upvotes: (@upvote_count + 1))
		
		redirect_back

	end

	

	private
	def answer_params
		params.require(:answer).permit(:content)
	end



end
