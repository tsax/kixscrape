class RecommendationsController < ApplicationController
  attr_reader :recommended_project
  helper_method :recommended_project

  def show
  	@recommended_project = Recommender.new.recommend_project
  end
end
