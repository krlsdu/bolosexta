class RenameColumnPeople < ActiveRecord::Migration
  def change
    rename_column :people, :name, :nome
  end
end
