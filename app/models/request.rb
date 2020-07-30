class Request < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments
  belongs_to :owner, class_name: "User"
end
