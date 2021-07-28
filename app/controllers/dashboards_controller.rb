class DashboardsController < ApplicationController
  before_action :authorize_current_user, only: %i[display pets bookings requests]

  def display
  end

  def pets
  end

  def bookings
  end

  def requests
  end

  private

  def authorize_current_user
    authorize :dashboard, :display?
    @user = current_user
  end
end
