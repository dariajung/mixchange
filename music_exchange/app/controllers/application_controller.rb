class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_user

  def home
  		render :template => 'hello_world'
  	end

force_ssl

private

def current_user
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def require_user
	unless current_user
		flash[:notice] = "You need to be logged in to see this page."
		redirect_to signin_url
		return false
	end
end

helper_method :current_user
end


