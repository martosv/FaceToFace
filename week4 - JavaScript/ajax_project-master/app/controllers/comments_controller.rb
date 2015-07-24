class CommentsController < ApplicationController
	def index
		@comments = Comment.all

		respond_to do |format|
			format.html
    	format.json { render json: @comments }
		end

	end
	def create
		success = false
		author =  params[:author]
		text = params[:text]

		comment = Comment.new author: author, text: text

		if comment.save
			success = true
		end

		respond_to do |format|
    	format.json { render json: success }
		end
		
	end
		
end
