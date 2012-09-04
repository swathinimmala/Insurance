require 'spec_helper'

describe PoliciesController do
    before(:each) do
      login_as_admin
      @policy = FactoryGirl.create(:policy)
    end
    def login_as_admin
      @user = FactoryGirl.create(:user, :name => "ash", :age => 32, :role => "admin")
      @user.save!
    end
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    it "returns http success" do
      get 'edit', :id => @policy.id
      response.should be_success
    end
    it "returns http success" do
      get 'show', :id => @policy.id
      response.should be_success
    end
  end