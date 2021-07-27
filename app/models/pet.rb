class Pet < ApplicationRecord
  has_many_attached :pet_pics
  belongs_to :user
  has_many :bookings
  has_many :pet_schedules, dependent: :destroy
  validates :name, presence: true
  validates :breed, presence: true
  validates :species, presence: true
  validates :user_id, presence: true
  validates :description, presence: true, length: { in: 20..1000 }
  validates :pet_pics, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :species, :breed],
    associated_against: {
      user: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
