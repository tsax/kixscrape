class Recommender
	def recommend_project
		projects = Kickstarter.by_category(:food, :page => 1)
		project = projects[6]
		project
	end
end