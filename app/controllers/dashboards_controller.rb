class DashboardsController < ApplicationController
  def display
    authorize :dashboard, :display?
    @user = current_user
  end
end
