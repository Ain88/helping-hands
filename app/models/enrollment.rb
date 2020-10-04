class Enrollment < ApplicationRecord
  belongs_to :users, class_name: "User", optional: true
  belongs_to :requests, class_name: "Request", optional: true
  after_commit { ApplicationJob.perform_later self }
  after_delete { ApplicationJob.perform_later self }
  after_commit { EnrollmentJob.perform_later self }
  after_delete { EnrollmentJob.perform_later self }
end
