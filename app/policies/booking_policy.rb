class BookingPolicy < ApplicationPolicy
  def confirm?
    true
  end

  def create?
    true
  end

  def show?
    true
  end
end
