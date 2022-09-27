class ApplicationController < ActionController::Base
# To enable sign in to function correctly.
before_action :configure_permitted_parameters, if: :devise_controller?
before_action :authenticate_user!
def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username, :password, :password_confirmation, :roles])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :email, :password, :remember_me])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation])
    end
end
