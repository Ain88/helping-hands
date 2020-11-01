class EnrollmentsChannel < ApplicationCable::Channel

  def subscribed
    stream_from 'enr'
  end

  def receive(data)
    data = Enrollment.all
    data.update_all(check_mark: 0)
    ActionCable.server.broadcast('enr', data)
  end

  def away2
    enr = Enrollment.all
    req = Request.all
    ActionCable.server.broadcast('enr', enr)
  end

  def unsubscribed

  end

end
