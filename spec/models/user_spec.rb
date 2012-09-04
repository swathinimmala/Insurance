require 'spec_helper'
require 'factory_girl_rails'

describe User do
	it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end
	context "user is invalid"
	it "without a name" do
		FactoryGirl.build(:user, name: nil).should_not be_valid
	end
	it "invalid without age" do
		FactoryGirl.build(:user, age: nil).should_not be_valid
    end
end

