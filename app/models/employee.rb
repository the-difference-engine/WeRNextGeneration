class Employee < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    belongs_to :camp, optional: true
    enum category: ["employee", "admin", "super_admin"]

      has_attached_file :image, :styles => { :medium => "300x300", :thumbnail => "200x200"}
  validates_attachment :image, content_type: { content_type:  ["image/jpg", "image/jpeg", "image/png"]}

    

    def self.as_csv
        CSV.generate do |csv|
            csv << column_names
            all.each do |result|
                csv << result.attributes.values_at(*column_names)
            end
        end
    end

end
