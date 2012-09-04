require 'spec_helper'
require 'factory_girl_rails'

describe UsersController do
  it "returns http success for show" do
    @user = FactoryGirl.create(:user)
    get 'show', :id => @user.id
    response.should be_success
  end
end