class RenameCodeClassesToCamps < ActiveRecord::Migration[5.1]
  def change
    rename_table :code_classes, :camps
  end
end
