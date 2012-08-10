OmniAuth.config.logger = Rails.logger
OmniAuth.config.full_host = "http://dev-calm-ocean-7065.herokuapp.com:3000/"

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
end