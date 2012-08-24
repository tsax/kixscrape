require 'spec_helper'
describe Recommender, :vcr => true do
	describe '#recommend_project' do
		it 'returns a random food project' do
			picker = ->(collection) { collection[14] }
			recommender = Recommender.new(picker: picker)
			# srand 5
			result = recommender.recommend_project
			# binding.pry
			result.name.should eq('Dang Coconut Chips')
		end
	end

	# subject { Recommender.new }
	# it { should respond_to(:recommend_project) }
end

#describe == context
#describe class or method
#context is a particular config/setup
