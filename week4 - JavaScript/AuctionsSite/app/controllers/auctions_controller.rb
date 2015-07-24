class AuctionsController < ApplicationController
	def index
		begin
			@user = User.find params[:user_id]
			@auctions = @user.auctions
		rescue ActiveRecord::RecordNotFound
			render 'no_auctions_found'
		end
	end

	def show
		@user = User.find params[:id]
		@auctions = @user.auctions
	end

	def new
		@user = User.find params[:user_id]
		@auctions = @user.auctions.new
	end

	def create
		@user = User.find params[:user_id]
		@auction = @user.auctions.new params_auction
		if @user.save
			flash[:notice] = "Auction saved succesfully."
			redirect_to @user
		else
			flash.now[:errors] = @auction.errors.full_messages
			render 'new'
		end
	end

	private
	def params_auction
		params.require(:auction).permit(:user_id, :item, :description, :end_date, :price)
	end
end
