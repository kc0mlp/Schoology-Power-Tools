class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Checks for users admin status
  def ensure_admin!
    unless user_signed_in?
      redirect_to root_path
      return false
    end
    unless current_user.admin?

      redirect_to welcome_adminonly_path

      return false
    end
  end

end
