class CreateHrMasters < ActiveRecord::Migration
  def change
    create_table :hr_masters do |t|
      t.references :hr_tables_column
      t.string :value
      t.integer :employee_id

      t.timestamps
    end
    add_index :hr_masters, :hr_tables_column_id
    add_foreign_key :hr_masters, :hr_tables_columns
  end
end
