module ApplicationHelper
	def get_class (action)
		if action_name == action
			return "active"
		else	
			return ""
		end
	end


	def stars(num_stars)
		return ((image_tag "star.jpg", :size => "32x32") * num_stars).html_safe
	end

	def is_admin?
		return current_user.try(:admin?)
	end
end
