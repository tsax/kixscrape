class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
  	binding.pry
  	@current_user ||= User.where(:uid => session[:user_id]).first if session[:user_id]
	end
	
	helper_method :current_user
end
