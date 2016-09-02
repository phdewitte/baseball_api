require_relative 'team'

require 'json'
require 'HTTParty'

team_response = HTTParty.get('https://api.sportradar.us/mlb-t5/league/active_rosters.json?api_key=88wqfh5nswegkgjhp23ptrse')
active_teams_hash = JSON.parse(team_response.to_json)
teams = active_teams_hash['teams']
cubs_info = teams[17]

p Team.new(cubs_info)

