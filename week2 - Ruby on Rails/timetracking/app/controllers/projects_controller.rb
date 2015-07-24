class ProjectsController < ApplicationController
	def index
		# interesa guardar los proyectos en una variable de instancia.
		# @projects = Project.order(created_at: :desc).limit(10) 
		# esta lógica (con order, limit etc) funciona pero se suele escribir en el modelo, no en el controlador.
		# por eso se expresa tan solo con la siguiente expresion:
		@projects = Project.last_created_projects(10)	
	end
=begin
	
En este caso solo cumple con el error concreto de ActiveRecord::RecordNotFound
	def show
		begin
			@project = Project.find params[:id]	
		rescue ActiveRecord::RecordNotFound
			render 'no_projects_found'
		end
	end

Para que cumpla con todos los errores posibles se usa el siguiente codigo:
=end
	def show
		unless @project = Project.find_by(id: params[:id])
			render 'no_projects_found', layout: 'admin'
		end
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new project_params
		if @project.save
			redirect_to @project
		else
			flash[:alert] = "The project hasn't been created"
			render new_project_path
		end
	end

	def edit
		@project = Project.find params[:id]
	end

	def update
		@project = Project.find params[:id]
		if @project.update project_params
			flash[:notice] = "Project updated succesfully."
			redirect_to @project
		else
			flash.now[:errors] = @project.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		project = Project.find params[:id]
		project.destroy
		redirect_to projects_path		
	end

	private
	def project_params
		params.require(:project).permit(:name, :new_description)
	end
end
