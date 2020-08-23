class User < ApplicationRecord
  has_many :enrollments
  has_many :requests, through: :enrollments, dependent: :destroy
  has_many :created_requests, class_name: "Request", foreign_key: "owner_id"
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_secure_password
  has_one_attached :photo

  validates :f_name, presence: { message: "First name can't be blank" }
  validates :f_name, length: { minimum: 2, message: "First name is too short (minimum is 2 characters)" }
  validates :l_name, presence: { message: "Last name can't be blank" }
  validates :l_name, length: { minimum: 2, message: "Last name is too short (minimum is 2 characters)" }
  validates :email, presence: { uniqueness: true, message: "Email can't be blank and has to be unique" }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
