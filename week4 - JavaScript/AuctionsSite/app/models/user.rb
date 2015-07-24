class User < ActiveRecord::Base
	has_many :auctions
	has_many :bids

	validates :name, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true, format: {with: /[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,4}/ }
end
