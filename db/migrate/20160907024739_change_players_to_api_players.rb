class ChangePlayersToApiPlayers < ActiveRecord::Migration
  def change
    rename_column :teams, :players, :api_players
  end
end
