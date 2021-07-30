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
      @booking.status = 0
      render :show unless @booking.save
    end
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
