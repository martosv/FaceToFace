class Project < ActiveRecord::Base
	has_many :entries
	validates :name, presence: true, uniqueness: true, length: {maximum: 30}, format: {with: /\A[a-zA-Z\s0-9]+\z/}
	

	def self.iron_find param
		#project.where("id= #{param}").first
		Project.where(id: param).first
		# Tambien: project.where(["id= ?",param]).first
		# Tambien: project.where("id= #{param}")[0]
		# Tambien: project.where(id: param)[0]
		# Tambien: project.where(["id= ?",param])[0]
	end

	def self.clean_old
		one_week_ago = Date.today-7.days
		projects = Project.where("created_at < ?", one_week_ago)
		projects.destroy_all
	end

	def self.clean_old_and_name_ironhack
		one_week_ago = Date.today-7.days
		projects = Project.where("created_at < ? AND name = ?", one_week_ago, "Ironhack")
		projects.destroy_all
	end

	def self.last_created_projects num 
	# se usa un metodo de clase siempre que nos refiramos a variables de clase, de manera que 
	# como projects es de clase, siempre que juguemos con sus base de datos hay que usar self
		projects = Project.order(created_at: :desc).limit(num) 
	end

	def calculate_hours(month, year)
		entries = self.entries
		hours = 0
		minutes = 0
		entries.each do |entry|
			if month == entry.date.month && year == entry.date.year
				hours += entry.hours
				minutes += entry.minutes
			end
		end
		total_hours_in_month = (hours + minutes/60).round
	end
end

