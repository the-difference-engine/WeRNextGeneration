class RenameCodeClassModelToCamps < ActiveRecord::Migration[5.1]
  def change
    rename_table :code_class, :camp
  end
end
