class Recommender
	def recommend_project
		project = Kickstarter.by_category(:food, :page => 1)[rand 15]
		# binding.pry
		return project
	end
end