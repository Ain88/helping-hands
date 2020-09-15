class Enrollment < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :requests, class_name: "Request", optional: true
  has_many :stats, dependent: :destroy
end
