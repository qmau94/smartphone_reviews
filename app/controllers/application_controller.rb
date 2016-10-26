class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_user

  def after_sign_in_path_for user
    current_user.admin? ? admin_root_url : root_url
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
  end

  def layout_by_user
    if user_signed_in? && current_user.admin?
      "admin"
    else
      "application"
    end
  end
end
