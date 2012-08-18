require 'spec_helper'
describe Recommender, :vcr => true do
	describe '#recommend_project' do
		it 'returns the 7th food project' do
			recommender = Recommender.new
			result = recommender.recommend_project
			result.name.should eq('Voodoo Sauce: The Greatest BBQ Sauce Known To Man')
		end
	end

	# subject { Recommender.new }
	it { should respond_to(:recommend_project) }
end

#describe == context
#describe class or method
#context is a particular config/setup
