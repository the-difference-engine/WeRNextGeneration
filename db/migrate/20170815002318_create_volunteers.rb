class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_type
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :bio

      t.timestamps
    end
  end
end
