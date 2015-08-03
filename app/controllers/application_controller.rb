class ApplicationController < ActionController::Base
  after_filter :store_location #Para cuando llega mediante un link.
  before_filter :store_location #Para cuando llega mediante un link.
  before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Parametros para formularios de Devise.
  before_filter :configure_permitted_parameters , if: :devise_controller?
  before_filter :is_owner

  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end


  protected

  # A donde va cuando inicia la sesión.
  def after_sign_in_path_for(resource)
    if current_user.habilitado?
      flash[:notice] = "Bienvenido #{current_user.nombre} - Cliente."
      # "/projects"
      session[:previous_url] || projects_path
    else
      sign_out(resource)
      flash[:warning] =  "Su usuario ha sido deshabilitado, por favor comuniquese con el admistrador (contacto@terciar.ga)."
      "/"
    end
  end

  # A donde va cuando finaliza la sesión.
  def after_sign_out_path_for(resource_or_scope)
    # request.referrer
    flash[:notice] = "Sesión cerrada."
    "/"
  end

  # Parametros para formularios de Devise.
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit( :nombre , :email , :tipo, :habilitado , :password , :password_confirmation )
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit( :nombre , :email, :tipo, :habilitado, :password , :password_confirmation , :current_password )
    end
  end


  def is_owner
    return false unless current_user

    # logger.info(@current_user.is_admin?)
    return true if current_user.is_admin?

    if current_user.tipo.nil?
      security_exit
      return false
    end

    case params[:controller]
       when "projects"
         project = Project.find_by_id(params[:id]) if params[:id]
         if project && project.user.id != current_user.id
           security_exit
           return false
         end
       when "notifications"
         notification = Notification.find_by_id(params[:id]) if params[:id]
         notification = Notification.find_by_project_id(params[:project_id]) if params[:project_id]
         if notification && notification.project.user.id != current_user.id
           security_exit
           return false
         end
       when "attachments"
         notification = Notification.find_by_id(params[:notification_id]) if params[:notification_id]
         if notification && notification.project.user.id != current_user.id
           security_exit
           return false
         end
       else
         #default case
   end
   return true
  end

  def security_exit
      respond_to do |format|
      format.html do
         redirect_to(root_path, alert: 'Acceso denegado.')
         return false
      end
    end
  end

end
