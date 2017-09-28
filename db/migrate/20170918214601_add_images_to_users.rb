class AddImagesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_attachment :camps, :image
    add_attachment :employees, :image
    add_attachment :guardians, :image
    add_attachment :locations, :image
    add_attachment :students, :image
    add_attachment :volunteers, :image

  end
end
