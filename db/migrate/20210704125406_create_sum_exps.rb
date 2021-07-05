class CreateSumExps < ActiveRecord::Migration[6.0]
  def change
    create_table :sum_exps do |t|
      t.integer :time, null: false
      t.integer :concentration_id, null: false
      t.integer :technique_id, null: false
      t.integer :out_put_id, null: false
      t.timestamps
    end
  end
end
