class Enrollments2Channel < ApplicationCable::Channel

  def subscribed
    stream_from 'enr2'
  end

  def receive(data)
    data = Enrollment.all
    data.update_all(check_mark: 0)
    ActionCable.server.broadcast('enr2', data)
  end

  def away2
    enr = Enrollment.all
    ActionCable.server.broadcast('enr2', enr)
  end

  def unsubscribed

  end

end
