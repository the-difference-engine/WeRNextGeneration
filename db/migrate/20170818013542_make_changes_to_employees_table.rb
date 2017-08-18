class MakeChangesToEmployeesTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :employees, :user_type, :integer

  end
end
