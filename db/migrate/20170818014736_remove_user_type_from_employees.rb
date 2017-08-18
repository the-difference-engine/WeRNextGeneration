class RemoveUserTypeFromEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :user_type, :integer
  end
end
