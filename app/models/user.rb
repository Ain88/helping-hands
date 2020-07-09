class User < ApplicationRecord
  has_secure_password
  validates :f_name, presence: true
  validates :f_name, uniqueness: true
  validates :f_name, length: { minimum: 4 }
  validates :l_name, presence: true
  validates :l_name, uniqueness: true
  validates :l_name, length: { minimum: 4 }
  validates :photo, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
