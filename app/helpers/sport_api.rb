module SportAPI
  def self.team_call
    teams_response = HTTParty.get("https://api.sportradar.us/mlb-t5/league/active_rosters.json?api_key=KEY_HERE")
    active_teams_hash = teams_response.parsed_response
    teams = active_teams_hash['teams']
  end

  def self.player_call(api_id)
    player_response = HTTParty.get("https://api.sportradar.us/mlb-t5/players/#{api_id}/profile.json?api_key=KEY_HERE")
    player_JSON = player_response.parsed_response
    player_JSON['player']
  end
end