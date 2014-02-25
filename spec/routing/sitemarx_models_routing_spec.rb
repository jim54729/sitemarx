require "spec_helper"

describe SitemarxModelsController do
  describe "routing" do

    it "routes to #index" do
      get("/sitemarx_models").should route_to("sitemarx_models#index")
    end

    it "routes to #new" do
      get("/sitemarx_models/new").should route_to("sitemarx_models#new")
    end

    it "routes to #show" do
      get("/sitemarx_models/1").should route_to("sitemarx_models#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sitemarx_models/1/edit").should route_to("sitemarx_models#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sitemarx_models").should route_to("sitemarx_models#create")
    end

    it "routes to #update" do
      put("/sitemarx_models/1").should route_to("sitemarx_models#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sitemarx_models/1").should route_to("sitemarx_models#destroy", :id => "1")
    end

  end
end
