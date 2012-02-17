require 'spec_helper'

describe "hr_masters/show" do
  before(:each) do
    @hr_master = assign(:hr_master, stub_model(HrMaster,
      :hr_tables_column => nil,
      :value => "Value",
      :employee_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
