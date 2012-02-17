require "spec_helper"

describe HrTablesController do
  describe "routing" do

    it "routes to #index" do
      get("/hr_tables").should route_to("hr_tables#index")
    end

    it "routes to #new" do
      get("/hr_tables/new").should route_to("hr_tables#new")
    end

    it "routes to #show" do
      get("/hr_tables/1").should route_to("hr_tables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hr_tables/1/edit").should route_to("hr_tables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hr_tables").should route_to("hr_tables#create")
    end

    it "routes to #update" do
      put("/hr_tables/1").should route_to("hr_tables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hr_tables/1").should route_to("hr_tables#destroy", :id => "1")
    end

  end
end
