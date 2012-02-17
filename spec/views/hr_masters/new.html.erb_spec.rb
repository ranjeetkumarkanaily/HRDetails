require 'spec_helper'

describe "hr_masters/new" do
  before(:each) do
    assign(:hr_master, stub_model(HrMaster,
      :hr_tables_column => nil,
      :value => "MyString",
      :employee_id => 1
    ).as_new_record)
  end

  it "renders new hr_master form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hr_masters_path, :method => "post" do
      assert_select "input#hr_master_hr_tables_column", :name => "hr_master[hr_tables_column]"
      assert_select "input#hr_master_value", :name => "hr_master[value]"
      assert_select "input#hr_master_employee_id", :name => "hr_master[employee_id]"
    end
  end
end
