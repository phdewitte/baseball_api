class AddTimestampsToTeams < ActiveRecord::Migration
  def change
    add_timestamps :teams
  end
end
