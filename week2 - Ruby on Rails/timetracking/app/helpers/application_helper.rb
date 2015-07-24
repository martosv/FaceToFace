module ApplicationHelper
	def flash_message_edit
		if flash[:errors] 
			flash[:errors] 
		elsif flash[:notice]
			flash[:notice]
		end
	end

	def flash_message
		display_message(:alert) || display_message(:notice)
	end

	private
	def display_message(type)
		if flash[type]
			content_tag :div, class: type do
				content_tag :p do
					flash[type]
				end
			end
		end
	end
end
