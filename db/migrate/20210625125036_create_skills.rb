class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name,   null: false
      t.string :genre,  null: false
      t.string :can,    null: false
      t.integer :total_minute, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
