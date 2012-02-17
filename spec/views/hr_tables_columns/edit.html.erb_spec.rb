require 'spec_helper'

describe "hr_tables_columns/edit" do
  before(:each) do
    @hr_tables_column = assign(:hr_tables_column, stub_model(HrTablesColumn,
      :hr_table => nil,
      :column_name => "MyString",
      :data_type => "MyString",
      :required => false
    ))
  end

  it "renders the edit hr_tables_column form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hr_tables_columns_path(@hr_tables_column), :method => "post" do
      assert_select "input#hr_tables_column_hr_table", :name => "hr_tables_column[hr_table]"
      assert_select "input#hr_tables_column_column_name", :name => "hr_tables_column[column_name]"
      assert_select "input#hr_tables_column_data_type", :name => "hr_tables_column[data_type]"
      assert_select "input#hr_tables_column_required", :name => "hr_tables_column[required]"
    end
  end
end
