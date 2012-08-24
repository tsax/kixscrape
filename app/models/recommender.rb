class Recommender
	def initialize(options={})
		@picker = options.fetch(:picker) { RandomPicker.new }
	end

	def recommend_project
		project = @picker.call(Kickstarter.by_category(:food, :page => 1))
		# binding.pry
		return project
	end

	class RandomPicker
		def call(collection)
			collection.sample
		end
	end
end