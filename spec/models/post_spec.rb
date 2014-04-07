# что написано, то и делается. Все просто.

require 'spec_helper'

describe Post do

	before do
		@posts = Post.new(title: 'Breaking News', desc: 'Putin became president')
	end

	subject { @posts }

	it { should respond_to(:title) }
	it { should respond_to(:desc) }

	it { should be_valid }

	describe "when title is not present" do
		before { @posts.title = " " }
		it { should_not be_valid }
	end

	describe "when description is not present" do
		before { @posts.desc = " " }
		it { should_not be_valid }
	end

	describe "when title too beaucoup" do
		before { @posts.title = "1" * 100 }
		it { should_not be_valid }
	end

end