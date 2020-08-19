class Enrollment < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :requests, optional: true
end
