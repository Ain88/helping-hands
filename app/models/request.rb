class Request < ApplicationRecord
  has_many :created_enrollments, class_name: "Enrollment", foreign_key: "request_id"
  has_many :users, through: :enrollments
  belongs_to :owner, class_name: "User", optional: true
  has_many :created_requests, class_name: "Message", foreign_key: "requests_id"

  validates :typev, presence: { message: "Type can't be blank" }
  validates :title, presence: { message: "Title can't be blank" }
  validates :title, length: { minimum: 4, maximum: 50, message: "Description between 4-50 characters" }
  validates :description, presence: { message: "Description can't be blank" }
  validates :description, length: { minimum: 4, maximum: 300, message: "Description between 4-300 characters" }
  validates :location, presence: { message: "Location can't be blank" }
  validates :counter, presence: { message: "Number of volunteers can't be blank" }

  after_commit { ApplicationJob.perform_later self }
end
