class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :firstname, :lastname, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:firstname, :lastname, :username, :email, :password, :password_confirmation, :current_password) }
  	end

    def index
    	@title = "| Master Tech RV"
  		@company_name = "Master Tech RV"
  		@address = "28717 Holiday Place, Elkhart IN 46517"
  	end
end
