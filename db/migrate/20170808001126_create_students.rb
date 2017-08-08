class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :medications
      t.string :medical_condition
      t.string :img
      t.string :img_release
      t.string :birth_date
      t.string :gender
      t.string :race
      t.string :emergency_contact
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.integer :guardian_id
      t.string :address

      t.timestamps
    end
  end
end
