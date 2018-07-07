class QueriesController < ApplicationController
	def index
		@query = Query.order(:id)
	end

 
	def new
		@query = Query.new
		render template: "queries/new"
	end

	def create
		@query = Query.new(query_params)
		if @query.save
			redirect_to @query

		else
			render "new"
		end
	end

	def show
		@query = Query.find(params[:id])
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
		params.require(:query).permit(:question, :description, :topic)
	end
end

