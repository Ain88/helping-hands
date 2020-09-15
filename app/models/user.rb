class User < ApplicationRecord
  has_many :enrollments, class_name: "Enrollment", foreign_key: "request_id"
  has_many :requests, through: :enrollments, dependent: :destroy
  has_many :created_requests, class_name: "Request", foreign_key: "owner_id"
  has_many :created_senders, class_name: "Message", foreign_key: "sender_id"
  has_many :created_receivers, class_name: "Message", foreign_key: "receiver_id"
  has_many :stats, dependent: :destroy

  has_one_attached :photo

  validates :f_name, presence: { message: "First name can't be blank" },
                     length: { minimum: 2, message: "First name is too short (minimum is 2 characters)" }
  validates :l_name, presence: { message: "Last name can't be blank" },
                     length: { minimum: 2, message: "Last name is too short (minimum is 2 characters)" }
  has_secure_password validations: false
  validates :password, presence: {message: "Passsword can't be blank"},
                     length: {minimum: 4, message: "Password is too short (minimum is 4 characters)"}
  validates :email, presence: { message: "Email can't be blank" },
                    uniqueness: { message: "Email already exist" }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "Email is invalid"
end
