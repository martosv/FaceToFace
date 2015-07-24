class HangmenController < ApplicationController
	def index
        @hangmen = Hangman.all
        random_position = @hangmen.length - 1
        @hangman = @hangmen[rand(random_position)]
        @word = @hangman.word
        @show_letter = "_ " * @word.length
    end 
end
