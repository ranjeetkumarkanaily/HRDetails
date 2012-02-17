require 'spec_helper'

describe "hr_tables_columns/show" do
  before(:each) do
    @hr_tables_column = assign(:hr_tables_column, stub_model(HrTablesColumn,
      :hr_table => nil,
      :column_name => "Column Name",
      :data_type => "Data Type",
      :required => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Column Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
