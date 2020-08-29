class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
  belongs_to :requests, optional: true
  validates :body, presence: true, length: {minimum: 2, maximum: 500}
end
