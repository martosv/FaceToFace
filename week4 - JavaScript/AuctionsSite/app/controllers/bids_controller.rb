class BidsController < ApplicationController
	def index
		begin
			@auction = Auction.find params[:id]
			@bids = @auction.bids
		rescue ActiveRecord::RecordNotFound
			render 'no_bids_found'
		end
	end

	def show
		@auction = Auction.find params[:id]
		@bids = @auction.bids
	end

	def new
		@auction = Auction.find params[:id]
		@bid = @auction.bids.new
	end

	def create
		@auction = Auction.find params[:id]
		@bid = @auction.bids.new params_bid
		if @user.save
			flash[:notice] = "Bid saved succesfully."
			redirect_to @auction
		else
			flash.now[:errors] = @bid.errors.full_messages
			render 'new'
		end
	end

	private
	def params_bid
		params.require(:bid).permit(:user_id, :auction_id, :bid)
	end
end
