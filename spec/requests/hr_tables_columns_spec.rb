require 'spec_helper'

describe "HrTablesColumns" do
  describe "GET /hr_tables_columns" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get hr_tables_columns_path
      response.status.should be(200)
    end
  end
end
