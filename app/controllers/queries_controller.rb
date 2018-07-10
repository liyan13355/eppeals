class QueriesController < ApplicationController
	def index

		@top_queries = Query.featured	
		@answer = Answer.new	 

	end

	def wages
		@query = Query.new
		@find_queries = Query.where(topic: "Payment of Wages")
		@queries = @find_queries.order(id: :desc)

		@answer = Answer.new
	end
 
 	def timeoff
 		@query = Query.new
		@find_queries = Query.where(topic: "Time Off")
		@queries = @find_queries.order(id: :desc)

		@answer = Answer.new
	end

	def timeoff_new
		@query = current_user.queries.new(query_params)
		@query.topic = "Time Off"
		if @query.save
			redirect_to timeoff_path

		else
			flash[:notice] = "Sorry, your query was not successfully submitted. Try again? :)"

		end
	end

	def create
		@query = current_user.queries.new(query_params)
		@query.topic = "Payment of Wages"
		if @query.save
			redirect_to wages_path

		else
			flash[:notice] = "Sorry, your query was not successfully submitted. Try again? :)"

		end
	end

	def show
		@query = Query.find(params[:id])
		@answer = Answer.new
	end


	def destroy 
		@query = Query.find(params[:id])
		@query.destroy
		redirect_to @query
	end

	def update
		@query = Query.find(params[:id])
		if @query.update(query_params)
			redirect_to query_path(@query)
		else
			render "edit"
		end
	end

	def edit 
			@query = Query.find(params[:id])
	end

	private
	def query_params
		params.require(:query).permit(:question, :description)
	end
end

