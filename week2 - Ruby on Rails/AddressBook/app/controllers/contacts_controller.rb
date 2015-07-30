class ContactsController < ApplicationController
	def index
		@contacts = Contact.order_contacts
	end

	def show
		@contact = Contact.find params[:id]
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new params_contact
		if @contact.save
			redirect_to @contact
		else
			render 'new'
		end
	end

	def show_by_letter
		@contacts = Contact.select_contact_by_letter params[:letter]
		@letter = params[:letter].upcase
	end

	def edit
		@contact = Contact.find params[:id]
	end

	def update
		@contact = Contact.find params[:id]
		if @contact.update params_contact
			flash[:notice] = "Contact updated succesfully."
			redirect_to @contact
		else
			flash.now[:errors] = @contact.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		contact = Contact.find params[:id]
		contact.destroy
		redirect_to contacts_path		
	end

	private
	def params_contact
		params.require(:contact).permit(:name, :address)
	end
end
