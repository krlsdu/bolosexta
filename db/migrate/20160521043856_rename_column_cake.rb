class RenameColumnCake < ActiveRecord::Migration
  def change
    rename_column :cakes, :name, :nome
  end
end
