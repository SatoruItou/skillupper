class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name,   null: false
      t.string :genre,  null: false
      t.integer :level, default: 1
      t.integer :exp, default: 0
      t.string :can,    null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
