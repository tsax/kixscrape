require 'spec_helper'

feature 'kickstarter recommendations', :vcr => true do 
	scenario 'get a recommendation' do
		visit root_path(:pick => 14)
		page.should have_content('Welcome to Kixscrape')
		# page.should have_content('Dang Coconut Chips')
	end

	scenario 'recommendations for test user Rick', :vcr => true do
		credentials = YAML.load_file(File.join(Rails.root, 'config/credentials.yml'))
		rick_credentials = credentials['Rick']
		OmniAuth.config.add_mock(:facebook, rick_credentials)
		visit root_path(:pick => 14)
		click_on 'Sign in with Facebook'
		page.should have_content('Signed in as')
	end
end