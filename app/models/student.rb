class Student < ApplicationRecord
  belongs_to :guardian 
  belongs_to :camp through :class_lists
end
