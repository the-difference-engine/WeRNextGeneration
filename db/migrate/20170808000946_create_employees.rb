class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :user_type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :image
      t.string :bio

      t.timestamps
    end
  end
end
