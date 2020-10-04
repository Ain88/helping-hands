class EnrollmentJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
  queue_as :default

  def perform(data)
    enr = Enrollment.all
    enr.update_all(check_mark: 0)
    ActionCable.server.broadcast('enr', enr)
    # Do something later
  end

end
