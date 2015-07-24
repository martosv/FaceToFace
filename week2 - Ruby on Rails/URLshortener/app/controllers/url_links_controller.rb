class UrlLinksController < ApplicationController
	def index
		@url_links = UrlLink.all
	end

	def show
		@url_links = UrlLink.all	
	end

	def new
		@url_link = UrlLink.new
	end

	def create
		@url_link = UrlLink.new params_url
		if @url_link.save
			flash[:notice] = "URL updated succesfully."
			redirect_to url_links_path
		else
			flash.now[:errors] = @url_link.errors.full_messages
			render 'new'
		end
	end

	def redirect_to_url
		begin
			@url_link = UrlLink.find params[:id]
			@url_link.counter_visits
			redirect_to @url_link.url
		rescue ActiveRecord::RecordNotFound
			render 'not_url_found'
		end
	end

	def top10
		@url_links = UrlLink.get_top10
	end

	def edit
		@url_link = UrlLink.find params[:id]
	end

	def update
		@url_link = UrlLink.find params[:id]
		if @url_link.update params_url
			flash[:notice] = "URL updated succesfully."
			redirect_to url_links_path
		else
			flash.now[:errors] = @url_link.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		url_link = UrlLink.find params[:id]
		url_link.destroy
		redirect_to url_links_path		
	end

	private
	def params_url
		params.require(:url_link).permit(:url, :visits)
	end
end
