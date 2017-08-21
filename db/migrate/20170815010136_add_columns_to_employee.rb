class AddColumnsToEmployee < ActiveRecord::Migration[5.1]
  def change

    add_column :employees, :super_admin, :boolean, default: false
    add_column :employees, :admin, :boolean, default: false
    add_column :employees, :manager, :boolean, default: false
    add_column :employees, :volunteer, :boolean, default: false
    add_column :guardians, :guardian, :boolean, default: false



    
    add_column :employees, :status, :string
    add_column :guardians, :status, :string

    
    

  end
end
