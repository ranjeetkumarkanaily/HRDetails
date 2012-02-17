require 'spec_helper'

describe "hr_tables/index" do
  before(:each) do
    assign(:hr_tables, [
      stub_model(HrTable,
        :table_name => "Table Name"
      ),
      stub_model(HrTable,
        :table_name => "Table Name"
      )
    ])
  end

  it "renders a list of hr_tables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Table Name".to_s, :count => 2
  end
end
