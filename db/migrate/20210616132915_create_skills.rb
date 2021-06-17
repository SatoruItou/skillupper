class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|

      t.timestamps
      t.string :name, null:false
      t.string :genre,   null:false
      t.integer :level,    null:false
      t.text :can,      null:false 
    end
  end
end
