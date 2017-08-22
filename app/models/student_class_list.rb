class StudentClassList < ApplicationRecord
  belongs_to :student 
  belongs_to :camp
  belongs_to :employee_id
end
