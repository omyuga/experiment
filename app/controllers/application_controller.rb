class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  # call the configured params only for devise controller to save resources
   before_action :configure_permitted_parameters, if: :devise_controller?

  # protect the database, while allowing these fields to be updated.
    protected
  
  def configure_permitted_parameters
    #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:username, :email, :password, :password_confirmation, :remember_me)
      end
    end
    #devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_in) do |user_params|
        user_params.permit(:username, :email, :password, :remember_me)
      end
    end
    #devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:username, :email, :password, :password_confirmation, :current_password)
      end
    end
  end

end
