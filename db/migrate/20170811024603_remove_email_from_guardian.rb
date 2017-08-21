class RemoveEmailFromGuardian < ActiveRecord::Migration[5.1]
  def change
    remove_column :guardians, :email, :string
  end
end
