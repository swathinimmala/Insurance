require 'spec_helper'

describe "Users" do
  describe "Testing" do
    it "creates a new user" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/users/new'
      fill_in 'name', :with => "jay"	
      fill_in 'age', :with => 24
      #save_and_open_page
      click_on 'register'
      #save_and_open_page
    end
    it "supports js", :js => true do
    	visit new_user_path
    	click_link "test js"
    	page.should have_content("js works")
    end
  end
end