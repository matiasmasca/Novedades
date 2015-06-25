class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Parametros para formularios de Devise.
  before_filter :configure_permitted_parameters , if: :devise_controller?

  protected
  # A donde va cuando inicia la sesión.
  def after_sign_in_path_for(resource)
    "/pages/home"
  end
  # A donde va cuando finaliza la sesión.
  def after_sign_out_path_for(resource_or_scope)
    # request.referrer
    "/"
  end

  # Parametros para formularios de Devise.
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit( :nombre , :email , :tipo, :habilitado , :password , :password_confirmation )
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit( :nombre , :email, :tipo,:habilitado, :password , :password_confirmation , :current_password )
    end
  end

end
