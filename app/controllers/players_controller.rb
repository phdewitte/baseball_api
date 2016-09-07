class PlayersController < ApplicationController
  before_action :find_team_for_player

  def index
    redirect_to team_path(@team)
  end

  private
    def find_team_for_player
      @team = Team.find(params[:team_id])
    end
end
