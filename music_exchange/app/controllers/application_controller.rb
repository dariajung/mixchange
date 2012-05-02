class ApplicationController < ActionController::Base
  def home
  		render :template => 'hello_world'
  end

 protect_from_forgery
 before_filter :require_user
 before_filter :authenticate_admin

force_ssl

private

def current_user
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def require_user
	unless current_user
		flash[:notice] = "You need to be logged in to see this page."
		redirect_to login_url
		return false
	end
end

helper_method :current_user

def is_admin?
	logger.warn(current_user.role == true)
	current_user.role == true
end

def authenticate_admin
	unless is_admin?
		redirect_to events_url
		return false
	end
end

helper_method :is_admin?

end



