class DashboardsController < ApplicationController
  before_action :authorize_current_user, only: %i[display pets bookings requests]

  def display
    @pets = @user.pets
  end

  private

  def authorize_current_user
    authorize :dashboard, :display?
    @user = current_user
  end
end
