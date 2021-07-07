class CreateSumExps < ActiveRecord::Migration[6.0]
  def change
    create_table :sum_exps do |t|
      t.integer :time, null: false
      t.integer :concentration_id, null: false
      t.integer :technique_id, null: false
      t.integer :out_put_id, null: false
      t.integer :exp_point
      t.references :skill, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
