class RequestsChannel < ApplicationCable::Channel

  def subscribed
    stream_from 'request'
  end

  def receive(data)
   ActionCable.server.broadcast('request', data)
  end

  def away
    request = Request.all
    ActionCable.server.broadcast('request', request)
  end

  def unsubscribed

  end

end
