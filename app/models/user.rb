class User < ApplicationRecord
  has_many :enrollments
  has_many :requests, through: :enrollments

  has_secure_password
  has_one_attached :photo
  validates :f_name, presence: true
  validates :f_name, length: { minimum: 4 }
  validates :l_name, presence: true
  validates :l_name, length: { minimum: 4 }
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
