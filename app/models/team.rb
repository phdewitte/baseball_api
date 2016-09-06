require 'json'
require_relative 'player'

class Team
  def initialize(team_attrs)
    @api_id = team_attrs.fetch('id')
    @market = team_attrs.fetch('market')
    @name = team_attrs.fetch('name')
    @players = team_attrs.fetch('players')
  end

  def roster
    player_objs = @players.map do |player|
      sleep 1
      Player.create(player['id'])
    end
    return player_objs
  end

  def players=(players_api_array)
    players_api_array
  end
end

