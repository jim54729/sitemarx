require 'spec_helper'

describe "sitemarx_models/index" do
  before(:each) do
    assign(:sitemarx_models, [
      stub_model(SitemarxModel,
        :url => "Url",
        :name => "Name"
      ),
      stub_model(SitemarxModel,
        :url => "Url",
        :name => "Name"
      )
    ])
  end

  it "renders a list of sitemarx_models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
