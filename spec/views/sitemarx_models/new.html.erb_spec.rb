require 'spec_helper'

describe "sitemarx_models/new" do
  before(:each) do
    assign(:sitemarx_model, stub_model(SitemarxModel,
      :url => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new sitemarx_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sitemarx_models_path, "post" do
      assert_select "input#sitemarx_model_url[name=?]", "sitemarx_model[url]"
      assert_select "input#sitemarx_model_name[name=?]", "sitemarx_model[name]"
    end
  end
end
