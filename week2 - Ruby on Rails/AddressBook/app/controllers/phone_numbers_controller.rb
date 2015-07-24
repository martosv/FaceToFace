class PhoneNumbersController < ApplicationController
	def index
		begin
			@contact = Contact.find params[:contact_id]
			@phone_numbers = @contact.phone_numbers
		rescue ActiveRecord::RecordNotFound
			render 'no_phone_numbers_found'
		end
	end

	def new
		@contact = Contact.find params[:contact_id]
		@phone_number = @contact.phone_numbers.new
	end

	def create
		@contact = Contact.find params[:contact_id]
		@phone_number = @contact.phone_numbers.new params_phone_number
		if @phone_number.save
			flash[:notice] = "Phone number created succesfully"
			redirect_to contact_phone_numbers_path(@contact)
		else
			flash.now[:errors] = @phone_number.errors.full_messages
			render 'new'
		end
	end

	def edit
		@contact = Contact.find params[:contact_id]
		@phone_number = @contact.phone_numbers.find params[:id]
	end

	def update
		@contact = Contact.find params[:contact_id]
		@phone_number = @contact.phone_numbers.find params[:id]
		if @phone_number.update params_phone_number
			flash[:notice] = "Phone number updated succesfully."
			redirect_to contact_phone_numbers_path(@contact)
		else
			flash.now[:errors] = @phone_number.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		contact = Contact.find params[:contact_id]
		phone_number = contact.phone_numbers.find params[:id]
		phone_number.destroy
		redirect_to contact_phone_numbers_path(contact)	
	end

	private
	def params_phone_number
		params.require(:phone_number).permit(:phone_number, :contact_id)
	end
end
