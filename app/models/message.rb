class Message < ApplicationRecord
  belongs_to :sender, class_name: "User", optional: true
  belongs_to :receiver, class_name: "User", optional: true
  belongs_to :requests, class_name: "Request", optional: true

  validates :body, presence: { message: "Message can't be blank" }
  validates :body, length: { minimum: 4, maximum: 300, message: "Message between 4-300 characters" }
  validates :requests_id, presence: { message: "Choose request topic" }
  validates :receiver_id, presence: { message: "Choose receiver" }
  validates :sender_id, presence: { message: "Choose sender" }

  after_commit { MessageJob.perform_later self }
  after_destroy { MessageJob.perform_later self }
  before_destroy { MessageJob.perform_later self }
end
