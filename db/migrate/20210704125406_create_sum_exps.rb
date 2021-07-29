class CreateSumExps < ActiveRecord::Migration[6.0]
  def change
    create_table :sum_exps do |t|
      t.integer :minute, null: false
     
      
      
      
      t.references :skill, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
