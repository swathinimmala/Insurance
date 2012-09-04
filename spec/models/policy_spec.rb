require 'spec_helper'
require 'factory_girl_rails'

describe Policy do
  it "has a valid factory" do 
  	FactoryGirl.create(:policy).should be_valid
  end
  it 'should create a new policy with valid attributes' do
    @policy = FactoryGirl.build(:policy)
    @policy.save.should be_true
  end
  context "is invalid" do	
  it "without a name" do
  	FactoryGirl.build(:policy, :name => nil).should_not be_valid
  end
  it "without premium" do
  	FactoryGirl.build(:policy, :premium => nil).should_not be_valid
  end
end
  context "premium" do
    it "must be an integer" do
    	policy_instance = FactoryGirl.build(:policy, :premium => 765)
    	policy_instance.should be_valid
    end
    it "invalid if it is not integer" do
    	policy_instance = FactoryGirl.build(:policy, :premium => nil)
    	policy_instance.valid?
    	policy_instance.should_not be_valid
    end
  end
  context "check associations" do
    before(:each) do
      @policy = FactoryGirl.build(:policy)
    end
  end
end