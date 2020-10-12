class RequestJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
  # queue_as :default
  #
  # def perform(data)
  #   req = Request.all
  #   req.update_all(check_mark: 0)
  #   ActionCable.server.broadcast('req', req)
  #   # Do something later
  # end

end
