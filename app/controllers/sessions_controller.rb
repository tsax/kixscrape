class SessionsController < ApplicationController
	def create
		# binding.pry
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.uid
		# redirect_to root_url
		redirect_to :controller => 'recommendations', :action => 'show'
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end

	def index
	end
end
