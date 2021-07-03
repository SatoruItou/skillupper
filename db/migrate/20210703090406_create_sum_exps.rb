class CreateSumExps < ActiveRecord::Migration[6.0]
  def change
    create_table :sum_exps do |t|

      t.timestamps
    end
  end
end
