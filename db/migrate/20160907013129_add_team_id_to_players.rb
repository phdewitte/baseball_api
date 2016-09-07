class AddTeamIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :team_id, :string
  end
end
