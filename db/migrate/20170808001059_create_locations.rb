class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :location_type
      t.string :address

      t.timestamps
    end
  end
end
