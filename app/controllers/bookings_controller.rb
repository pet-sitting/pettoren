class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[create show]
  skip_after_action :verify_authorized, only: %i[create]

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    params[:"booking-dates"].split(',').each do |date|
      @booking = Booking.new(pet_id: params[:pet_id])
      @booking.date = Date.parse(date)
      @booking.sitter = current_user
      render :show unless @booking.save
    end
    if params[:"booking-dates"].empty?
      redirect_to pet_path(params[:pet_id])
      flash.alert = "Must select booking date(s)."
    else
      redirect_to booking_path(@booking)
    end
    authorize Booking
  end
end
