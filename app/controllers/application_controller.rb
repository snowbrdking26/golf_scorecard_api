class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?
  #   :include ActionController::RequestForgeryProtection
#   protect_from_forgery with: :exception
#   helper_method :current_user, :logged_in, :authorize

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in
    !!current_user
  end

  def authorize
    redirect_to login_path unless logged_in
  end
  

  protected

  def configure_permitted_parameters
    added_attrs = [:nickname, :name, :username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
