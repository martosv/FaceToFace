class RatingsController < ApplicationController
	def index
		begin
			@book = Book.find params[:book_id]
			@ratings = @book.ratings
		rescue ActiveRecord::RecordNotFound
			render 'no_ratings_found'
		end
	end

	def show
		@book = Book.find params[:id]
		@ratings = @book.ratings
	end

	def new
		@book = Book.find params[:book_id]
		@rating = @book.ratings.new
	end

	def create
		@book = Book.find params[:book_id]
		@rating = @book.ratings.new params_rating
		if @book.save
			flash[:notice] = "Rating saved succesfully."
			redirect_to @book
		else
			flash.now[:errors] = @rating.errors.full_messages
			render 'new'
		end
	end

	private
	def params_rating
		params.require(:rating).permit(:book_id, :score, :user)
	end
end
