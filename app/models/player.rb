class Player < ActiveRecord::Base
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


  def age
    # do some birthdate calculation here
  end

end


# players_response = HTTParty.get("https://api.sportradar.us/mlb-t5/players/9d93f121-f032-407d-bb30-ad3593641db9/profile.json?api_key=88wqfh5nswegkgjhp23ptrse")
# player_hash = JSON.parse(players_response.to_json)
# p Player.new(player_hash['player'])