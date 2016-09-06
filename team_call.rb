require_relative 'team'

require 'json'
require 'HTTParty'

team_response = HTTParty.get("https://api.sportradar.us/mlb-t5/league/active_rosters.json?api_key=#{ENV['SR_API_KEY']}")
active_teams_hash = JSON.parse(team_response.to_json)
teams = active_teams_hash['teams']
cubs_info = teams[17]

cubs = Team.new(cubs_info)
p cubs.roster

