class CharactersController < ApplicationController
	def index
		@characters = Character.all		
	end

	def show
		@character = Character.find params[:id]
		@characters = @character.food_or_code_in_common
	end

	def new 
		@character = Character.new
	end

	def create
		@character = Character.new character_params
		if @character.save
			flash[:notice] = "Character created succesfully."
			redirect_to @character
		else
			flash.now[:errors] = @character.errors.full_messages
			render 'new'
		end
	end

	private
	def character_params
		params.require(:character).permit(:name, :age, :genre, :photo, :job, :food, :code, :species)		
	end
end
