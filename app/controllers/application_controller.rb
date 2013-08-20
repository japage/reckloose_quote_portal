class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def is_admin?
	warden.authenticate!
		unless current_user && current_user.try(:admin?)
			render file: "errors#routing", status: :forbidden
		end
	end
end
