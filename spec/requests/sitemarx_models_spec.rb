require 'spec_helper'

describe "SitemarxModels" do
	
  describe "GET /sitemarx_models" do
  	  it "should have the content " do
  	  	  visit '/sitemarx_models/new'
  	  	  expect(page).to have_content('')  #trying to break the test, worked!
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sitemarx_models_path
      response.status.should be(200)
    end
  end
end
