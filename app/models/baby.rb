class Baby < ApplicationRecord
  ORIGINS = %w(asian european african indian south-american north-american arabian)
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :firstname, :lastname, :age, :gender, :location, :price, :photo, presence: true
  validates :origin, inclusion: { in: ORIGINS, message: "%{value} is not a valid origin" }
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :price, numericality: { only_integer: true, greater_than: -1 }
end
