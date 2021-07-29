class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @pets = Pet.all.sample(9)
  end
end
