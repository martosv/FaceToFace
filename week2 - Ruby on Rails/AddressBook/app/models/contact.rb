class Contact < ActiveRecord::Base
	has_many :emails
	has_many :phone_numbers
	validates :name, presence: true, length: {maximum: 20}, uniqueness: true 

	def self.order_contacts
		self.order("name ASC")
	end	

	def list_with_comma_number
		if self.phone_numbers.any?
			text_number = ''
			last_number = self.phone_numbers.last.phone_number
			self.phone_numbers.each_with_index do |number_obj, index|
				if index == self.phone_numbers.length - 1
					text_number += "#{number_obj.phone_number}"
				else
					text_number += "#{number_obj.phone_number}, "
				end
			end
			return text_number
		end
	end

	def list_with_comma_email 
		if self.emails.any?
			text_email = ''
			last_email = self.emails.last.email
			self.emails.each_with_index do |email_obj, index|
				if index == self.emails.length - 1
					text_email += "#{email_obj.email}"
				else
					text_email += "#{email_obj.email}, "
				end
			end
			return text_email
		end
	end

	def self.select_contact_by_letter letter
		contacts = Contact.all
		group_contacts_by_letter = []

		contacts.each do |contact|
			if letter == contact.name.first.downcase
				group_contacts_by_letter << contact
			end
		end
		
		group_contacts_by_letter
	end
	

end

