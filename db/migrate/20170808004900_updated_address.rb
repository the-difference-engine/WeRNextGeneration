class UpdatedAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :city, :string
    add_column :employees, :state, :string
    add_column :employees, :zip, :integer

    add_column :locations, :city, :string
    add_column :locations, :state, :string
    add_column :locations, :zip, :integer

  end
end
