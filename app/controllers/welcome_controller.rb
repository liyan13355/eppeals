class WelcomeController < ApplicationController
	def index
		#in case we need the code below in the future. It makes the featured articles smarter.
		# @featured_articles = Article.last(:order => "id asc", :limit => 3)
	end
end 