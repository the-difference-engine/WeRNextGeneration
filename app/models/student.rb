class Student < ApplicationRecord
  belongs_to :guardian 
  belongs_to :class_list 
  belongs_to :camp through :class_list
end
