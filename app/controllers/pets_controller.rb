class PetsController < ApplicationController
  before_action :set_pet, only: %i[show]

  def home; end

  def index
    @pets = Pet.all
  end

  def show; end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end
end