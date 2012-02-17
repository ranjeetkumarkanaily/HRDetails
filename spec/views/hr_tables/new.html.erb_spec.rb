require 'spec_helper'

describe "hr_tables/new" do
  before(:each) do
    assign(:hr_table, stub_model(HrTable,
      :table_name => "MyString"
    ).as_new_record)
  end

  it "renders new hr_table form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hr_tables_path, :method => "post" do
      assert_select "input#hr_table_table_name", :name => "hr_table[table_name]"
    end
  end
end
