class ChangeZipToString < ActiveRecord::Migration[5.1]
  def change
    change_column :camps, :zip, :string
    change_column :employees, :zip, :string
    change_column :guardians, :zip, :string
    change_column :locations, :zip, :string
    change_column :students, :zip, :string
    change_column :volunteers, :zip, :string
  end
end
