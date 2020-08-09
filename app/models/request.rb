class Request < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments
  belongs_to :owner, class_name: "User"

  validates :typev, presence: true
  validates :title, presence: true
  validates :title, length: { minimum: 4 }
  validates :description, presence: true
  validates :description, length: { minimun: 4, maximum: 300 }
  validates :location, presence: true
  validates :counter, presence: true
end
