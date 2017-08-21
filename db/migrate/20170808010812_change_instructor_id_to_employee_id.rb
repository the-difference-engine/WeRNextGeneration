class ChangeInstructorIdToEmployeeId < ActiveRecord::Migration[5.1]
  def change
    rename_column :student_class_lists, :instructor_id, :employee_id
  end
end
