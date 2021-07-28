class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index show]
  before_action :set_pet, only: %i[show]

  # skip_after_action :verify_authorized, only: %i[home index show]

  def home; end

  def index
    @pets = policy_scope(Pet)
    authorize @pets
    if params[:query].present?
      @pets = Pet.global_search(params[:query])
    else
      @pets = Pet.all
    end
  end

  def show
    @booking = Booking.new
    @booking.pet = @pet
    @booking.sitter = current_user
    @pet_schedules = @pet.pet_schedules.map { |pet_schedule| pet_schedule.date.strftime("%Y-%-m-%-d") }.join(",")

    @markers =
      {
        lat: User.find(@pet.user_id).latitude,
        lng: User.find(@pet.user_id).longitude,

        image_url: helpers.asset_url('paw-picture.png')
      }
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to new_pet_pet_schedule_path(@pet)
    else
      render :new
    end
    authorize @pet
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def pet_params
    params.require(:pet).permit(:name, :species, :breed, :description, pet_pics: [])
  end
end
