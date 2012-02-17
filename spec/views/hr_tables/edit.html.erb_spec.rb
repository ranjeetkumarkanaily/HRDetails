require 'spec_helper'

describe "hr_tables/edit" do
  before(:each) do
    @hr_table = assign(:hr_table, stub_model(HrTable,
      :table_name => "MyString"
    ))
  end

  it "renders the edit hr_table form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hr_tables_path(@hr_table), :method => "post" do
      assert_select "input#hr_table_table_name", :name => "hr_table[table_name]"
    end
  end
end
