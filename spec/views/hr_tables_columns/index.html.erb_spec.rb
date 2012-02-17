require 'spec_helper'

describe "hr_tables_columns/index" do
  before(:each) do
    assign(:hr_tables_columns, [
      stub_model(HrTablesColumn,
        :hr_table => nil,
        :column_name => "Column Name",
        :data_type => "Data Type",
        :required => false
      ),
      stub_model(HrTablesColumn,
        :hr_table => nil,
        :column_name => "Column Name",
        :data_type => "Data Type",
        :required => false
      )
    ])
  end

  it "renders a list of hr_tables_columns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Column Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
