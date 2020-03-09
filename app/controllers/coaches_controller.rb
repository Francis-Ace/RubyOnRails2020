class CoachesController < ApplicationController
  # GET /coaches
  def index
    @coaches = Coach.order(:name)
  end
  # automatically loads the associated view:
  # app/view/students/index.html.erb
  
  # GET /coaches/:id
  def show
    @coach
  end
end
