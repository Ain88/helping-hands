class Request < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :users, through: :enrollments
  belongs_to :owner, class_name: "User"

  validates :typev, presence: { message: "Type can't be blank" }
  validates :title, presence: { message: "Title can't be blank" }
  validates :title, length: { minimum: 4, message: "Title is too short (minimum is 4 characters)" }
  validates :description, presence: { message: "Description can't be blank" }
  validates :description, length: { minimum: 4, maximum: 300, message: "Description between 4-300 characters" }
  validates :location, presence: { message: "Location can't be blank" }
  validates :counter, presence: { message: "Counter can't be blank" }

end
