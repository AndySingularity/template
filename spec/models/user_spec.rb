# тестируем юзера

require 'spec_helper'

describe User do

 	before do
    @user = User.new(username: "Rajesh_Koothrappali", email: "user@example.com", password: "crocodile")
  end

  subject { @user }

	it { should respond_to(:username) }
	it { should respond_to(:email) }
	it { should respond_to(:password) }

	it { should be_valid }



	describe "when username is not present" do
		before { @user.username = ""}
		it { should_not be_valid }
	end	



	describe "when username is too long" do
		before {@user.username = "z"*26}
		it { should_not be_valid }
	end



	describe "when email is not present" do
		before {@user.email = ""}
		it { should_not be_valid }
	end



	describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end
    it { should_not be_valid }
  end

  describe "when email is not present" do
  	before {@user.email = ""}
  	it { should_not be_valid }
  end
end  