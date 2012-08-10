class SessionsController < ApplicationController
	def create
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.uid
		redirect_to root_url
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end

	def index
		10.times do |_|
			puts "haha"
		end
	end
end
