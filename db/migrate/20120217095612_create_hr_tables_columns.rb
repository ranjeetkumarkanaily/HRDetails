class CreateHrTablesColumns < ActiveRecord::Migration
  def change
    create_table :hr_tables_columns do |t|
      t.references :hr_table
      t.string :column_name
      t.string :data_type
      t.boolean :required

      t.timestamps
    end
    add_index :hr_tables_columns, :hr_table_id
    add_foreign_key :hr_tables_columns, :hr_tables
  end
end
