class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
self.allow_forgery_protection = false
add_flash_types :error, :sussces
helper_method :current_user,:current_student

def current_user
    @current_user ||= Teacher.find_by email: session[:ts_email] if session[:ts_email]
  end
def current_student
    @current_student ||= Student.find_by username: session[:username] if session[:username]
  end
end
