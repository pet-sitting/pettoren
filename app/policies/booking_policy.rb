class BookingPolicy < ApplicationPolicy
  def confirm?
    true
  end

  def create?
    true
  end
end
