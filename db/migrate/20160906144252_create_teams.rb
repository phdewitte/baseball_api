class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :api_id, null: false
      t.string :market, null: false
      t.string :name, null: false
      t.text :players, array: true, default: []
    end
  end
end
