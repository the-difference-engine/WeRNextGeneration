class ChangeInstructorToEmployee < ActiveRecord::Migration[5.1]
  def change
    rename_column :code_classes, :instructor_id, :employee_id
  end
end
