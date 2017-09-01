class Student < ApplicationRecord
  belongs_to :guardian 
  belongs_to :student_class_list, optional: true 

end
