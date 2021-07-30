class BookingsController < ApplicationController
  skip_after_action :verify_authorized, only: %i[create]

  def create
    params[:"booking-dates"].split(',').each do |date|
      @booking = Booking.new(pet_id: params[:pet_id])
      @booking.date = Date.parse(date)
      @booking.sitter = current_user
      @booking.status = 0
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

  def update
    @booking = Booking.find(params[:id])
    unless @booking.update(status: params[:booking][:status].to_i)
      flash.alert = "Failed change."
    end
    redirect_to dashboard_path
    authorize @booking
  end
end
