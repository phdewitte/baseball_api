require 'HTTParty'
require 'json'

class Player
  def initialize(player_attrs)
    @api_id = player_attrs.fetch('id')
    @first_name = player_attrs.fetch('first_name')
    @last_name = player_attrs.fetch('last_name')
    @jersey_number = player_attrs.fetch('jersey_number')
    @birthdate = player_attrs.fetch('birthdate')
    @height = player_attrs.fetch('height')
    @weight = player_attrs.fetch('weight')
    @bat_hand = player_attrs.fetch('bat_hand')
    @throw_hand = player_attrs.fetch('throw_hand')
    @primary_position = player_attrs.fetch('primary_position')

    # Leage standing api call required for below
    # @hits
    # @homeruns
    # @rbi
    # @avg
    # @obp
    # @ops
    # @win_loss
    # @era
    # @strikeouts
  end

  def self.create(api_id)
    player_response = HTTParty.get("https://api.sportradar.us/mlb-t5/players/#{api_id}/profile.json?api_key=88wqfh5nswegkgjhp23ptrse")
    player_JSON = JSON.parse(player_response.to_json)
    self.new(player_JSON['player'])
  end

  def age
    # do some birthdate calculation here
  end

end


# players_response = HTTParty.get("https://api.sportradar.us/mlb-t5/players/9d93f121-f032-407d-bb30-ad3593641db9/profile.json?api_key=88wqfh5nswegkgjhp23ptrse")
# player_hash = JSON.parse(players_response.to_json)
# p Player.new(player_hash['player'])