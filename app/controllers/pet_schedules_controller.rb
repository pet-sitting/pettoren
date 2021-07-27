class PetSchedulesController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[new create]

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
    redirect_to pet_path(params[:pet_id])
    authorize @schedule
  end
end
