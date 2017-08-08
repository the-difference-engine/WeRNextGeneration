class CreateStudentClassLists < ActiveRecord::Migration[5.1]
  def change
    create_table :student_class_lists do |t|
      t.integer :student_id
      t.integer :code_classes_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
