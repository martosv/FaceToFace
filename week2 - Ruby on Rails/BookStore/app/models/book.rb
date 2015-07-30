class Book < ActiveRecord::Base
	has_many :ratings
	validates :name, presence: true, uniqueness: true

	def average_total_rating
		scores = []
		if self.ratings.any?
			self.ratings.each do |rating|
				scores << rating.score
			end	
			sum_ratings = scores.reduce(:+)
			length = scores.length
			average_rating = (sum_ratings.to_f / length.to_f).round(1)
		else 
			return 0
		end
	end

	def self.newest_books
		order("created_at DESC")
	end

	def self.search(query)
		where("name like ? OR description like ?", "%#{query}%", "%#{query}%")
	end

	def self.order_by_rating word_search
		search(word_search).sort_by{|book| book.average_total_rating }.reverse
	end
end
