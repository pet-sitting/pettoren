class Pet < ApplicationRecord
  has_one_attached :pet_pic
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :user_id, presence: true
  validates :description, presence: true, length: { in: 20..1000 }
end
