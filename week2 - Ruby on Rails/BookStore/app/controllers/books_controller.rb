class BooksController < ApplicationController
	def index
		@books = Book.all.newest_books
	end

	def search
		@books = Book.order_by_rating(params[:search])
		render 'index'
	end

	def show
		@book = Book.find params[:id]
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new params_book
		if @book.save
			flash[:notice] = "Book created succesfully."
			redirect_to @book
		else
			flash.now[:errors] = @book.errors.full_messages
			render 'new'
		end
	end

	def edit
		@book = Book.find params[:id]
	end

	def update
		@book = Book.find params[:id]
		if @book.update params_book
			flash[:notice] = "Book updated succesfully."
			redirect_to @book
		else
			flash.now[:errors] = @book.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		book = Book.find params[:id]
		book.destroy
		redirect_to books_path		
	end

	private
	def params_book
		params.require(:book).permit(:name, :description, :price)
	end
end
