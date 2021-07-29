class PetSchedulesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]

  def new
    @schedule = PetSchedule.new
    authorize @schedule
  end

  def create
    params[:"booking-dates"].split(',').each do |date|
      @schedule = PetSchedule.new(pet_id: params[:pet_id])
      @schedule.date = Date.parse(date)
      @schedule.save
    end

    if params[:"booking-dates"].empty?
      redirect_to new_pet_pet_schedule_path(params[:pet_id]), notice: "Must select available date(s)."
    else
      redirect_to pet_path(params[:pet_id])
    end
    authorize PetSchedule
  end
end
