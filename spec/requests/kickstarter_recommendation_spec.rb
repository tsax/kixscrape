require 'spec_helper'

feature 'kickstarter recommendations', :vcr => true do
	scenario 'recommendations for test user Rick', :vcr => true do
		credentials = YAML.load_file(File.join(Rails.root, 'config/credentials.yml'))
		rick_credentials = credentials['Rick']
		OmniAuth.config.add_mock(:facebook, rick_credentials)
		visit root_path
		click_on 'Sign in with Facebook'
		visit current_path + '?pick=5'
		page.should have_content('Signed in as')
		page.should have_content('Prohibition Bakery')
	end
end