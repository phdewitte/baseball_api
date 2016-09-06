class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def populate
    @teams = []
    teams_from_api = SportAPI.team_call
    teams_from_api.each do |team_hash|
      new_team = Team.new(
        api_id: team_hash['id'],
        market: team_hash['market'],
        name: team_hash['name'],
        players: team_hash['players']
      )

      if new_team.save
        @teams << new_team
      else
        redirect_to '/teams'
      end
    end
      redirect_to root_url
  end

  def show
    @team = Team.find(params[:id])
  end

  def cubs
    cubs_info = Team.where(name: 'Cubs')
  end

end