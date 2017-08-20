class Camp < ApplicationRecord
  has_many :class_list
  has_many :students, through: :class_list
  has_many :locations
  has_many :employees 
  has_many :volunteers
end

