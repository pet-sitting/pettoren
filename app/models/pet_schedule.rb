class PetSchedule < ApplicationRecord
  belongs_to :pet
  validates :pet_id, presence: true
  validates :date, presence: true
end
