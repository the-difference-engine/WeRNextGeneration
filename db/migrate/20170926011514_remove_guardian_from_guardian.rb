class RemoveGuardianFromGuardian < ActiveRecord::Migration[5.1]
  def change
    remove_column :guardians, :guardian, :boolean 
  end
end
