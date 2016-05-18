class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.date :date
      t.belongs_to :cake, index: true, foreign_key: true
      t.belongs_to :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
