class HrTablesColumn < ActiveRecord::Base
  belongs_to :hr_table
  has_many :hr_masters
end
