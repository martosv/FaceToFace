class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find params[:id]
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new params_user
		if @user.save
			flash[:notice] = "User created succesfully."
			redirect_to @user
		else
			flash.now[:errors] = @user.errors.full_messages
			render 'new'
		end
	end

	def edit
		@user = User.find params[:id]
	end

	def update
		@user = User.find params[:id]
		if @user.update params_user
			flash[:notice] = "User updated succesfully."
			redirect_to @user
		else
			flash.now[:errors] = @user.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		user = User.find params[:id]
		user.destroy
		redirect_to users_path		
	end

	private
	def params_book
		params.require(:user).permit(:name, :email)
	end
end
