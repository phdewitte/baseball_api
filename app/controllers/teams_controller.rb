class TeamsController < ApplicationController
  def index
    if Team.all.empty?
      redirect_to new_team_path
    else
      @teams = Team.all
    end
  end

  def new
    teams_from_api = SportAPI.team_call
    teams_from_api.each do |team_hash|
      new_team = Team.new(
        api_id: team_hash['id'],
        market: team_hash['market'],
        name: team_hash['name'],
        api_players: team_hash['players']
      )
      if !new_team.save
        "Double check API call"
      end
    end
    redirect_to '/teams'
  end

  def show
    @team = Team.find(params[:id])

    if @team.roster.empty?
      @team.api_players.each do |player|
        sleep 1
        parsed_player = eval(player)
        player_info = SportAPI.player_call(parsed_player['id'])
        new_player_obj = Player.new(
          api_id: player_info['id'],
          team_id: player_info['team']['id'],
          first_name: player_info['first_name'],
          last_name: player_info['last_name'],
          jersey_number: player_info['jersey_number'],
          birthdate: player_info['birthdate'],
          height: player_info['height'],
          weight: player_info['weight'],
          bat_hand: player_info['bat_hand'],
          throw_hand: player_info['throw_hand'],
          primary_position: player_info['primary_position']
        )
        if !new_player_obj.save
          "Double check your api call"
        end
      end
      redirect_to team_path(@team)
    end
  end

  def cubs
    cubs_info = Team.where(name: 'Cubs')
  end

end