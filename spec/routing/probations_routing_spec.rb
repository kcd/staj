require "spec_helper"

describe ProbationsController do
  describe "routing" do

    it "routes to #index" do
      get("/probations").should route_to("probations#index")
    end

    it "routes to #new" do
      get("/probations/new").should route_to("probations#new")
    end

    it "routes to #show" do
      get("/probations/1").should route_to("probations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/probations/1/edit").should route_to("probations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/probations").should route_to("probations#create")
    end

    it "routes to #update" do
      put("/probations/1").should route_to("probations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/probations/1").should route_to("probations#destroy", :id => "1")
    end

  end
end
