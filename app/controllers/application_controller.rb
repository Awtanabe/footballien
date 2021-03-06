class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :sex, :job, :location, :introduction])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :sex, :job, :location, :introduction])
    end
end
