class AddCellPhoneToPeople < ActiveRecord::Migration
  def change
    add_column :people, :encrypted_cellphone, :string
    add_column :people, :encrypted_cellphone_iv, :string
  end
end
