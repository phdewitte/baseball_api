class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :api_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :jersey_number, null: false
      t.string :birthdate, null: false
      t.integer :height, null: false
      t.integer :weight, null: false
      t.string :bat_hand, null: false
      t.string :throw_hand, null: false
      t.string :primary_position, null: false

      t.timestamps
    end
  end
end
