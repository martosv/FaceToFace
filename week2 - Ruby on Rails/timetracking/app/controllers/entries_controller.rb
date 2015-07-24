class EntriesController < ApplicationController
	def index
		begin
			@project = Project.find params[:project_id]
			@entries = @project.entries
		rescue ActiveRecord::RecordNotFound
			render 'no_entries_found'
		end
	end

	def new
		@project = Project.find params[:project_id]
		@entry = @project.entries.new
	end

	def create
		@project = Project.find params[:project_id]
		@entry = @project.entries.new entry_params

		if @entry.save 
			flash[:notice] = "Entry created succesfully"
			redirect_to project_entries_path(@project)
		else
			flash[:alert] = "The entry hasn't been created"
			render 'new'
		end
	end

	def edit
		@project = Project.find params[:project_id]
		@entry = @project.entries.find params[:id]
	end

	def update
		@entry = Entry.find params[:id]
		if @entry.update entry_params
			flash[:notice] = "Entry updated succesfully."
			redirect_to action: 'index'
		else
			flash.now[:errors] = @entry.errors.full_messages
			redirect_to 'edit'
		end
	end

	def destroy
		project = Project.find params[:project_id]
		entry = project.entries.find params[:id]
		entry.destroy
		redirect_to project_entries_path(project)	
	end

	private
	def entry_params
		params.require(:entry).permit(:hours, :minutes, :comments, :date)
	end
end
