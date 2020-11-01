class ApplicationJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
  # queue_as :default
  #
  def perform(data)
    note = Note.find(1)
    fulfilled = Request.where("cur_counter >= counter").count
    if(note.text != fulfilled)
      note.update!(text: fulfilled)
      ActionCable.server.broadcast('abc', fulfilled)
    end
    # Do something later
  end
  
end
