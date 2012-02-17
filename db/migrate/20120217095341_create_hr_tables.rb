class CreateHrTables < ActiveRecord::Migration
  def change
    create_table :hr_tables do |t|
      t.string :table_name

      t.timestamps
    end
  end
end
