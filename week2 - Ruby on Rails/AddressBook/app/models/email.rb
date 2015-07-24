class Email < ActiveRecord::Base
	belongs_to :contact
	validates :email, format: {with: /[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,4}/ }, uniqueness: true 
end
