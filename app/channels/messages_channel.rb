class MessagesChannel < ApplicationCable::Channel

  def subscribed
    stream_from 'mes'
  end

  def receive(data)
    data = Message.all
    data.update_all(check_mark: 0)
    ActionCable.server.broadcast('mes', data)
  end

  def away4
    mes = Message.all
    ActionCable.server.broadcast('mes', mes)
  end

  def unsubscribed

  end

end
