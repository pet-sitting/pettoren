class Booking < ApplicationRecord
  belongs_to :sitter, class_name: "User"
  belongs_to :pet
  enum status: %i[pending rejected accepted]
  validates :sitter_id, presence: true
  validates :pet_id, presence: true
  validates :status, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }

  def pending?
    status == 'pending'
  end
end
