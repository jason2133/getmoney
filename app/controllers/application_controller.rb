class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  #모든 액션을 하기 전에 무조건 로그인이 먼저 되어야 함
  before_action :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
