class AddCityToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :city, :string

    add_column :students, :state, :string

    add_column :students, :zip, :integer
  end
end
