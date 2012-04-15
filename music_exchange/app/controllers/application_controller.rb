class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :require_user

  #private
  #def current_user

  def home
  		render :template => 'hello_world'
	end

force_ssl

private

def current_user
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
end
helper_method :current_user
end


