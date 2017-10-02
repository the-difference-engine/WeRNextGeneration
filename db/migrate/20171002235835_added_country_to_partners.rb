class AddedCountryToPartners < ActiveRecord::Migration[5.1]
  def change

    add_column :partners, :country, :string
  end
end
