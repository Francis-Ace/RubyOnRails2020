class PlayersController < ApplicationController
  # GET /players
  def index
    @players = Player.order(:name)
  end
  # Automatically loads the associated view:
  # app/views/students/index.html.erb

  # GET /player/:id
  def show
  end
end
