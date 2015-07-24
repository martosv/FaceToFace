class Bid < ActiveRecord::Base
	belongs_to :auction
	belongs_to :user

	validates :bidding, presence: true
end
