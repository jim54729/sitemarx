require 'spec_helper'

describe "sitemarx_models/edit" do
  before(:each) do
    @sitemarx_model = assign(:sitemarx_model, stub_model(SitemarxModel,
      :url => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit sitemarx_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sitemarx_model_path(@sitemarx_model), "post" do
      assert_select "input#sitemarx_model_url[name=?]", "sitemarx_model[url]"
      assert_select "input#sitemarx_model_name[name=?]", "sitemarx_model[name]"
    end
  end
end
