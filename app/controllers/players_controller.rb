class PlayersController < ApplicationController
  before_action :find_team_for_player

  def index
    redirect_to team_path(@team)
  end

  def new
    # @team.players.each do |player|
    #   sleep 1
    #   parsed_player = eval(player)
    #   player_info = SportAPI.player_call(parsed_player['id'])
    #   new_player_obj = Player.new(
    #     api_id: player_info['id'],
    #     team_id: player_info['team']['id'],
    #     first_name: player_info['first_name'],
    #     last_name: player_info['last_name'],
    #     jersey_number: player_info['jersey_number'],
    #     birthdate: player_info['birthdate'],
    #     height: player_info['height'],
    #     weight: player_info['weight'],
    #     bat_hand: player_info['bat_hand'],
    #     throw_hand: player_info['throw_hand'],
    #     primary_position: player_info['primary_position']
    #   )
    #   if new_player_obj.save
    #     redirect_to team_path(@team)
    #   else
    #     "Double check your api call"
    #   end
    # end
  end

  private
    def find_team_for_player
      @team = Team.find(params[:team_id])
    end
end
