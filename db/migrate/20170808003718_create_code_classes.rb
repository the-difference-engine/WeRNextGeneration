class CreateCodeClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :code_classes do |t|
      t.string :title
      t.string :description
      t.integer :max_students
      t.integer :min_students
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.integer :instructor_id
      t.string :start_time
      t.string :end_time
      t.string :start_date
      t.string :end_date
      t.decimal :price, precision: 9, scale: 2

      t.timestamps
    end
  end
end
