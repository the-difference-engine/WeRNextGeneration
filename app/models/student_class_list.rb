class StudentClassList < ApplicationRecord
  belongs_to :student 
  belongs_to :code_class
  belongs_to :employee_id
end
