class Student < ApplicationRecord
  belongs_to :guardian 
  belongs_to :student_class_list, optional: true 




    has_attached_file :image, :styles => { :medium => "300x300", :thumbnail => "200x200"}
  validates_attachment :image, content_type: { content_type:  ["image/jpg", "image/jpeg", "image/png"]}

  
end
