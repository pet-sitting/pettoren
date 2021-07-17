class Booking < ApplicationRecord
  belongs_to :sitter, class_name: "User"
  enum status: [:pending, :rejected, :accepted]
end
