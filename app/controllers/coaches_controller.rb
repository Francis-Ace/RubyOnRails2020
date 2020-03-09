class CoachesController < ApplicationController
  # GET /coaches
  def index
    @coaches = Coach.includes(:team).order(:name)
  end
  # automatically loads the associated view:
  # app/view/students/index.html.erb

  # GET /coaches/:id
  def show
    @coach = Coach.find(params[:id])
  end
  # automatically loads the associated view:
  # app/view/students/show.html.erb
end
