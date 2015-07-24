require 'pry'
class Account 
	
	attr_accessor :website, :user, :password, :check_if_password_is_encrypted

	def initialize website, user, password
		@website = website
		@user = user
		@password = password
		encrypt_password
		@check_if_password_is_encrypted = true
	end

	def get_password
		@password
	end

	def alphabet
		alphabet = ('a' .. 'z').to_a	
	end

	def encrypt_password
		new_pos = 0
		password_encrypted = ''

		@password.each_char do |char|
			new_pos = alphabet.index(char.downcase).to_i + 3
			
			if new_pos > (alphabet.length - 1)
				new_pos = new_pos % alphabet.length
			end

			if is_upcase? char
				password_encrypted += alphabet[new_pos].upcase
			else
				password_encrypted += alphabet[new_pos]
			end

			new_pos = 0
		end

		already_encrypted password_encrypted
		@check_if_password_is_encrypted = true	
	end

	def show_password_encrypted
		puts @password
	end

	def decrypt_password
		new_pos = 0
		password_decrypted = ''

		@password.each_char do |char|
			new_pos = alphabet.index(char.downcase).to_i - 3
			
			if new_pos < 0
				new_pos = new_pos + alphabet.length
			end

			if is_upcase? char
				password_decrypted += alphabet[new_pos].upcase
			else
				password_decrypted += alphabet[new_pos]
			end

			new_pos = 0
		end
		
		already_decrypted password_decrypted
		@check_if_password_is_encrypted = false
	end

	def already_encrypted password_encrypted
		if @check_if_password_is_encrypted == true
			puts 'Password already encrypted'
		else
			@password = password_encrypted
		end		
	end

	def already_decrypted password_decrypted
		if @check_if_password_is_encrypted == false
			puts 'Password already decrypted'
		else
			@password = password_decrypted
		end		
	end

	def show_password_decrypted
		puts decrypt_password
	end

	def is_upcase? letter
		letter == letter.upcase
	end
end

class AccountManager
	attr_accessor :save_accounts, :save_accounts_encrypted

	def initialize 
		@save_accounts = []
		@save_accounts_encrypted = []
		@counter_insecure = 0
	end

	def add account
		@save_accounts.push(account)
	end

	def add_encrypted_account account
		@save_accounts_encrypted.push(account)
	end

	def show_accounts 
		@save_accounts.each do |account|
			if account.check_if_password_is_encrypted == true
				@save_accounts_encrypted.push(account)
				
			else
				@save_accounts_encrypted.push("The account of #{account.user} is decrypted")
			end
		end
		puts @save_accounts_encrypted
	end

	def count_insecure_acounts
		@save_accounts.each do |account|
			length_password = account.password.length
			if length_password < 5
				@counter_insecure += 1
			end
		end
		puts @counter_insecure
	end
end


#my_account = Account.new('www.google.com', 'Vir', 'awxZABC')
#my_account.show_password_encrypted
#my_account.show_password_decrypted
am = AccountManager.new
ac1 = Account.new "www.facebook.com", "max_power", "asfdsdf"
ac1.decrypt_password
am.add(ac1)
#am.show_accounts

#am.count_insecure_acounts

=begin
	
puts ac.password #dvgi

ac.decrypt_password
puts ac.password #asdf
puts '----'

ac.encrypt_password
puts ac.password #dvgi
puts '----'


ac.encrypt_password
puts ac.password # dvgi already encrypted
puts '----'

ac.decrypt_password
puts ac.password #asdf
puts '----'

ac.decrypt_password
puts ac.password # asdf already decrypt

=end

ac2 = Account.new "www.tuenti.com", "luna_power", "kusf"
am.add(ac2)
#am.show_accounts
#am.count_insecure_acounts

ac3 = Account.new "www.facebook.com", "power_man", "asakdfsdf"
am.add(ac3)

ac4 = Account.new "www.facebook.com", "max_power", "asfdsdfsef"
ac4.decrypt_password
am.add(ac4)

ac1 = Account.new "www.twitter.com", "locoloco", "adf"
ac1.decrypt_password
am.add(ac1)

am.show_accounts
am.count_insecure_acounts