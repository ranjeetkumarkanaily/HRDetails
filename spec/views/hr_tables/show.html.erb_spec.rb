require 'spec_helper'

describe "hr_tables/show" do
  before(:each) do
    @hr_table = assign(:hr_table, stub_model(HrTable,
      :table_name => "Table Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Table Name/)
  end
end
