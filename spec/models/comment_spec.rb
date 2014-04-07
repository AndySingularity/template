require 'spec_helper'

describe Comment do

	before do
		@comment = Comment.new(comment: 'Walk the Walk')
	end

	subject { @comment }

	
	it { should respond_to(:comment) }

	it { should be_valid }

	describe "when description is not present" do
		before { @comment.comment = " " }
		it { should_not be_valid }
	end
end