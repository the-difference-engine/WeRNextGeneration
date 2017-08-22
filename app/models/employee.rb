class Employee < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    belongs_to :camp
    enum category: ["partner", "employee", "admin", "super_admin"]

end
