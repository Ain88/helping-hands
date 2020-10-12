class RequestsChannel < ApplicationCable::Channel

  # def subscribed
  #   stream_from 'req'
  # end
  #
  # def receive(data)
  #   data = Request.all
  #   data.update_all(check_mark: 0)
  #   ActionCable.server.broadcast('req', data)
  # end
  #
  # def away3
  #   req = Request.all
  #   ActionCable.server.broadcast('req', req)
  # end
  #
  # def unsubscribed
  #
  # end

end
