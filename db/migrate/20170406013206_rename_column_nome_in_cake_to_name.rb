class RenameColumnNomeInCakeToName < ActiveRecord::Migration
  def change
  	rename_column :cakes, :nome, :name
  end
end
