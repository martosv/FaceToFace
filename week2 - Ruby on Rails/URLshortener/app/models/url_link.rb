class UrlLink < ActiveRecord::Base
	validates :url, presence: true
	def counter_visits 
		self.visits += 1
		self.save
	end

	def self.get_top10
		UrlLink.order("visits DESC").limit(10)
	end
end
