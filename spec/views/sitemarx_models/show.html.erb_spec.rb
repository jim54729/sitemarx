require 'spec_helper'

describe "sitemarx_models/show" do
  before(:each) do
    @sitemarx_model = assign(:sitemarx_model, stub_model(SitemarxModel,
      :url => "Url",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Name/)
  end
end
