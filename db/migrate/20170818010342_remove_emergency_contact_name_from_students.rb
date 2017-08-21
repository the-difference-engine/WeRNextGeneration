class RemoveEmergencyContactNameFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :emergency_contact_name, :string
  end
end
