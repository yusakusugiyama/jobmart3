class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters,if: :devise_controller?

  #deviseのサインアップで許可するパラメーターを指定
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name

  end
end
