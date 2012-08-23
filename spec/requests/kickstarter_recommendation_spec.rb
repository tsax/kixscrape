require 'spec_helper'

feature 'kickstarter recommendations', :vcr => true do 
	scenario 'get a recommendation' do
		srand 5
		visit root_path
		page.should have_content('Welcome to Kixscrape')
		page.should have_content('St. Paul Classic Cookie: Scratch Baked Goodies for Everyone!')
	end
end
