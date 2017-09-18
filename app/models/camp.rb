class Camp < ApplicationRecord
  has_many :class_list
  has_many :students, through: :class_list
  has_many :locations
  has_many :employees 
  has_many :volunteers




    has_attached_file :image, :styles => { :medium => "300x300", :thumbnail => "200x200"}
  validates_attachment :image, content_type: { content_type:  ["image/jpg", "image/jpeg", "image/png"]}



  
end

