class Note < ApplicationRecord
  # after_commit { ApplicationJob.perform_later self }

end
