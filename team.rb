require 'json'
require_relative 'player'

class Team
  def initialize(team_attrs)
    @api_id = team_attrs.fetch('id')
    @market = team_attrs.fetch('market')
    @name = team_attrs.fetch('name')
    @players = team_attrs.fetch('players')
    @staff = team_attrs.fetch('staff')
  end

  def players
    players_response = HTTParty.get("https://api.sportradar.us/mlb-t5/players/9d93f121-f032-407d-bb30-ad3593641db9/profile.json?api_key=88wqfh5nswegkgjhp23ptrse")
    players_array = JSON.parse(players_response.to_json)
    p players_array.each
  end
end

