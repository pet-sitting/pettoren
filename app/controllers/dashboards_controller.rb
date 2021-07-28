class DashboardsController < ApplicationController
  def display
    authorize :dashboard, :display?
  end
end
