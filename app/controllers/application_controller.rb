class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Проверка на контреллер, если devise, то вызывает метод configure_permitted_parameters для настройки разрешенных параметров
	before_filter :configure_permitted_parameters, if: :devise_controller?
		protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :name
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :avatar) }
		devise_parameter_sanitizer.for(:account_update) << :username
		devise_parameter_sanitizer.for(:account_update) << :avatar
		devise_parameter_sanitizer.for(:account_update) << :about
		devise_parameter_sanitizer.for(:account_update) << :title
	end

  
end
