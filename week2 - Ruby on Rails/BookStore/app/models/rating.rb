class Rating < ActiveRecord::Base
	belongs_to :book
	validates :user, presence: true, uniqueness: true
	validates :score, presence: true, numericality: true, inclusion: {in: 1..5} 
end
