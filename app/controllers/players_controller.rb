class PlayersController < ApplicationController
  # GET /players
  def index
    # The .include fixes the N+1 issue when accessing
    # the player teams in a loop in the view
    @players = Player.includes(:team).order(:name)
  end
  # Automatically loads the associated view:
  # app/views/students/index.html.erb

  # GET /player/:id
  def show
    @player = Player.find(params[:id])
  end
  # Automatically loads the associated view:
  # app/views/students/show.html.erb
end
