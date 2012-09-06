class RecommendationsController < ApplicationController
  attr_reader :recommended_project
  helper_method :recommended_project

  def show
    # binding.pry
    @graph = Koala::Facebook::API.new(current_user.oauth_token)
  	@recommended_project = Recommender.new(recommender_options).recommend_project
  end

  private
  def recommender_options
  	options = {}
  	unless Rails.env.production?
	  	if params[:pick]
	  		options[:picker] = ->(collection) { collection[params[:pick].to_i] }
	  	end
	  end
		options
  end
end
