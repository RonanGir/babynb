class Baby < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :firstname, :lastname, :age, :gender, :location, :price, :photo, presence: true
  validates :origin, inclusion: { in: %w(asian european african indian south-american north-american),
    message: "%{value} is not a valid origin" }
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :price, numericality: { only_integer: true, greater_than: -1 }
end
