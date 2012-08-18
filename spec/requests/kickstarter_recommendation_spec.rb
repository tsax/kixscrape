require 'spec_helper'

feature 'kickstarter recommendations', :vcr => true do 
	scenario 'get a recommendation' do
		visit root_path
		page.should have_content('Welcome to Kixscrape')
		page.should have_content('Voodoo Sauce: The Greatest BBQ Sauce Known To Man')
	end
end
