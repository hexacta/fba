require "spec_helper"

describe DonantesController do
  describe "routing" do

    it "routes to #index" do
      get("/donantes").should route_to("donantes#index")
    end

    it "routes to #new" do
      get("/donantes/new").should route_to("donantes#new")
    end

    it "routes to #show" do
      get("/donantes/1").should route_to("donantes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/donantes/1/edit").should route_to("donantes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/donantes").should route_to("donantes#create")
    end

    it "routes to #update" do
      put("/donantes/1").should route_to("donantes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/donantes/1").should route_to("donantes#destroy", :id => "1")
    end

  end
end
