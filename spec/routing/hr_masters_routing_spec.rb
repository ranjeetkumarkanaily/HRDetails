require "spec_helper"

describe HrMastersController do
  describe "routing" do

    it "routes to #index" do
      get("/hr_masters").should route_to("hr_masters#index")
    end

    it "routes to #new" do
      get("/hr_masters/new").should route_to("hr_masters#new")
    end

    it "routes to #show" do
      get("/hr_masters/1").should route_to("hr_masters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hr_masters/1/edit").should route_to("hr_masters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hr_masters").should route_to("hr_masters#create")
    end

    it "routes to #update" do
      put("/hr_masters/1").should route_to("hr_masters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hr_masters/1").should route_to("hr_masters#destroy", :id => "1")
    end

  end
end
