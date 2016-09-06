class PlayersController < ApplicationController
  def populate
    @players = self.players.map do |player|
      sleep 1
      player_info = SportAPI.player_call(player['id'])
      Player.create(
        @api_id = player_info['id'],
        @first_name = player_info['first_name'],
        @last_name = player_info['last_name'],
        @jersey_number = player_info['jersey_number'],
        @birthdate = player_info['birthdate'],
        @height = player_info['height'],
        @weight = player_info['weight'],
        @bat_hand = player_info['bat_hand'],
        @throw_hand = player_info['throw_hand'],
        @primary_position = player_info['primary_position']
      )
    end
    redirect_to @team
  end
end