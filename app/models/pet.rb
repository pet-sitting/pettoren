class Pet < ApplicationRecord
  has_many_attached :pet_pics
  belongs_to :user
  has_many :bookings
  has_many :pet_schedules
  validates :name, presence: true
  validates :user_id, presence: true
  validates :description, presence: true, length: { in: 20..1000 }
end
