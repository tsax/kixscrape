require 'spec_helper'

feature 'kickstarter recommendations', :vcr => true do 
	scenario 'get a recommendation' do
		visit root_path(:pick => 14)
		page.should have_content('Welcome to Kixscrape')
		page.should have_content('Dang Coconut Chips')
	end
end