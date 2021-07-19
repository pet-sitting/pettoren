class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :address, presence: true
  has_many :pets, dependent: :destroy
  has_many :bookings_as_sitter, class_name: "Booking", foreign_key: :sitter_id
end
