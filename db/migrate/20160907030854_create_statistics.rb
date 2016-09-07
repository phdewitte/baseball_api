class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :hits
      t.integer :homeruns
      t.integer :rbi
      t.float :avg
      t.float :obp
      t.float :ops
      t.string :win_loss
      t.float :era
      t.integer :strikeouts

      t.timestamps null: false
    end
  end
end
