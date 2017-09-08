class RemoveEmailAddToAdd1Add1ToAdd2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :volunteers, :email, :string

    rename_column :camps, :address, :address_1
    rename_column :employees, :address, :address_1
    rename_column :guardians, :address, :address_1
    rename_column :locations, :address, :address_1
    rename_column :students, :address, :address_1
    rename_column :volunteers, :address, :address_1

    add_column :camps, :address_2, :string
    add_column :employees, :address_2, :string
    add_column :guardians, :address_2, :string
    add_column :locations, :address_2, :string
    add_column :students, :address_2, :string
    add_column :volunteers, :address_2, :string    

  end
end
