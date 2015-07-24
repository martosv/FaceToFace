class Auction < ActiveRecord::Base
	belongs_to :user
	has_many :user

	validates :item, :price, presence: true
end
