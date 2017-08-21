class AddCompanyLogoToEmployees < ActiveRecord::Migration[5.1]
  def change
  	add_column :employees, :company_logo, :string
  end
end
