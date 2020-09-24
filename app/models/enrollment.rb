class Enrollment < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :requests, class_name: "Request", optional: true
  has_many :created_enrollments, class_name: "Message", foreign_key: "enrollments_id", dependent: :destroy
  after_commit { ApplicationJob.perform_later self }
end
