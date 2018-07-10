class SearchResultController < ApplicationController
	def index
		@pg_search_documents = PgSearch.multisearch(params[:search])
		@article_results = @pg_search_documents.select {|x| x.searchable_type == "Article"}
		@query_results = @pg_search_documents.select {|x| x.searchable_type == "Query"}
	end
end
