class Character < ActiveRecord::Base
	validates :name, :photo, :food, :code, presence: true

	def food_or_code_in_common
		array_character_in_common = []
		food = self.food
		code = self.code
		name = self.name
		characters = Character.all
		characters.each do |character|
			if self != character && (character.food == food || character.code == code) 
				array_character_in_common << character
			end
		end
		array_character_in_common
	end
end
