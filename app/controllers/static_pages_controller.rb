class StaticPagesController < ApplicationController

	def home
		# get public messages
		@comments = Comment.where(subject: 0).order('created_at DESC').first(10)
	end

	
		
end
