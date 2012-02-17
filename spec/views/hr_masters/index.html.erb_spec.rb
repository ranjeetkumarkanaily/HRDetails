require 'spec_helper'

describe "hr_masters/index" do
  before(:each) do
    assign(:hr_masters, [
      stub_model(HrMaster,
        :hr_tables_column => nil,
        :value => "Value",
        :employee_id => 1
      ),
      stub_model(HrMaster,
        :hr_tables_column => nil,
        :value => "Value",
        :employee_id => 1
      )
    ])
  end

  it "renders a list of hr_masters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
