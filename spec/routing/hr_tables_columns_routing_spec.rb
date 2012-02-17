require "spec_helper"

describe HrTablesColumnsController do
  describe "routing" do

    it "routes to #index" do
      get("/hr_tables_columns").should route_to("hr_tables_columns#index")
    end

    it "routes to #new" do
      get("/hr_tables_columns/new").should route_to("hr_tables_columns#new")
    end

    it "routes to #show" do
      get("/hr_tables_columns/1").should route_to("hr_tables_columns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hr_tables_columns/1/edit").should route_to("hr_tables_columns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hr_tables_columns").should route_to("hr_tables_columns#create")
    end

    it "routes to #update" do
      put("/hr_tables_columns/1").should route_to("hr_tables_columns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hr_tables_columns/1").should route_to("hr_tables_columns#destroy", :id => "1")
    end

  end
end
