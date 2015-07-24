class Hangman < ActiveRecord::Base
	def show_lines_word 
		"_ "*self.length	
	end

	def check_letter letter_input
		array_word_letters = self.split("")
		array_show_lines_word = show_lines_word.split("")
		array_word_letters.each_with_index do |index, word_letter|
			if letter_input.downcase == word_letter.downcase 
				array_show_lines_word[index] = word_letter
			else
				@lives -= 1
				array_show_lines_word
			end
		end
	end

	def check_word word_input
		if self.downcase == word_input.downcase
			"YOU WIN"
		else
			@lives = 0
			"GAME OVER"
		end
	end
end
