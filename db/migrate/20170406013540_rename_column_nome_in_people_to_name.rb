class RenameColumnNomeInPeopleToName < ActiveRecord::Migration
  def change
  	rename_column :people, :nome, :name
  end
end
