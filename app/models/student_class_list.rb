class StudentClassList < ApplicationRecord
  
  belongs_to :camp
  belongs_to :employee_id

  has_many :students
end
