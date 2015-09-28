class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Add bootstrap alerts
  add_flash_types :success, :error, :warning, :danger

  # Checks for users admin status
  def ensure_admin!
    unless user_signed_in?
      redirect_to root_path
      return false
    end
    unless current_user.admin?

      redirect_to root_path, warning: "That area requires administrative rights."

      return false
    end
  end

end
