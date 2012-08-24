class RecommendationsController < ApplicationController
  attr_reader :recommended_project
  helper_method :recommended_project

  def show()
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
