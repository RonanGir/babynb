class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :babies, dependent: :destroy
  has_many :requests, through: :babies, source: :bookings

  has_many :bookings, dependent: :destroy

end
