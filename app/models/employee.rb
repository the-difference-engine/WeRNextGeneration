class Employee < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    belongs_to :camp, optional: true
    enum category: ["partner", "employee", "admin", "super_admin"]

    def self.as_csv
        CSV.generate do |csv|
            csv << column_names
            all.each do |result|
                csv << result.attributes.values_at(*column_names)
            end
        end
    end

end
