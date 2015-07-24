class EmailsController < ApplicationController
	def index
		begin
			@contact = Contact.find params[:contact_id]
			@emails = @contact.emails
		rescue ActiveRecord::RecordNotFound
			render 'no_emails_found'
		end
	end

	def show
		@contact = Contact.find params[:id]
		@emails = @contact.emails
	end

	def new
		@contact = Contact.find params[:contact_id]
		@email = @contact.emails.new
	end

	def create
		@contact = Contact.find params[:contact_id]
		@email = @contact.emails.new params_email

		if @email.save
			flash[:notice] = "Email created succesfully"
			redirect_to contact_emails_path(@contact)
		else
			flash.now[:errors] = @email.errors.full_messages
			render 'new'
		end
	end

	def edit
		@contact = Contact.find params[:contact_id]
		@email = @contact.emails.find params[:id]
	end

	def update
		@contact = Contact.find params[:contact_id]
		@email = @contact.emails.find params[:id]
		if @email.update params_email
			flash[:notice] = "Email updated succesfully."
			redirect_to contact_emails_path(@contact)
		else
			flash.now[:errors] = @email.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		contact = Contact.find params[:contact_id]
		email = contact.emails.find params[:id]
		email.destroy
		redirect_to contact_emails_path(contact)	
	end

	private
	def params_email
		params.require(:email).permit(:email, :contact_id)
	end
end
