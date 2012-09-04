require 'spec_helper'
require 'factory_girl_rails'

describe PolicyHolder do
  it "has a valid factory" do 
  	FactoryGirl.create(:policy_holder).should be_valid
  end
  before :each do 
  	@policy_holder = FactoryGirl.build(:policy_holder)
  end
  it "should have a user" do
  	@policy_holder.user.should_not be_blank
  end
  it "should have a policy" do
  	@policy_holder.policy.should_not be_blank
  end
end
