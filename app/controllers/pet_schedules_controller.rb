class PetSchedulesController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[new create]

  def new
    @schedule = PetSchedule.new
    authorize @schedule
  end

  def create
    @schedule = PetSchedule.new(schedule_params)
    @schedule.user = current_user
    if @schedule.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
    authorize @schedule
  end

  private

  def schedule_params
    params.require(:pet_schedule).permit(%i[pet date])
  end
end
