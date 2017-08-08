class CreateGuardians < ActiveRecord::Migration[5.1]
  def change
    create_table :guardians do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :home_phone
      t.string :cell_phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :student_id

      t.timestamps
    end
  end
end
