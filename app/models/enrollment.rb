class Enrollment < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :requests, class_name: "Request", optional: true
  after_commit { ApplicationJob.perform_later self }
end
