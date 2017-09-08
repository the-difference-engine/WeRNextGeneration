class AddCountry < ActiveRecord::Migration[5.1]
  def change
    add_column :camps, :country, :string
    add_column :employees, :country, :string
    add_column :guardians, :country, :string
    add_column :locations, :country, :string
    add_column :students, :country, :string
    add_column :volunteers, :country, :string
  end
end
