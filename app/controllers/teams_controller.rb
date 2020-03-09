class TeamsController < ApplicationController

  # Get /
  def index
    @teams = Team.all
  end
  # Rails automatically loads the associated view:
  # app/view/teams/index.html.erb
  # All @teams var is shared with the view

  # Get /teams/:id
  def show
    @team = Team.find(params[:id])
  end
  # Rails automatically loads the associated view:
  # app/view/teams/show.html.erb
  # All @team var is shared with the view
end
