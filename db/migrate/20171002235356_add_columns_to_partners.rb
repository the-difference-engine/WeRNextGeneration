class AddColumnsToPartners < ActiveRecord::Migration[5.1]
  def change
    
    add_column :partners, :company_name, :string
    add_column :partners, :address_1, :string
    add_column :partners, :address_2, :string
    add_column :partners, :city, :string
    add_column :partners, :state, :string
    add_column :partners, :zip, :integer
    add_attachment :partners, :image

  end
end
