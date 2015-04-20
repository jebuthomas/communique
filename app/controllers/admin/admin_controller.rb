class Admin::AdminController < ApplicationController
	before_filter :is_admin?

	def is_admin?
		unless current_user.is_admin?
			flash[:error] = "Permission denied"
			redirect_to root_path
		end
	end
end
