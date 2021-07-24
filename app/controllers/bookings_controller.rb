class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[confirm create]
  skip_after_action :verify_authorized, only: %i[create confirm]

  def confirm; end

  def create
    redirect_to bookings_confirm_path
  end
end
