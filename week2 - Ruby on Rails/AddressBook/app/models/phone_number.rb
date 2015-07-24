class PhoneNumber < ActiveRecord::Base
	belongs_to :contact
	validates :phone_number, format: {with: /[+]+[0-9]{2}+\s+[0-9]{9}/ }, uniqueness: true 
	
end
