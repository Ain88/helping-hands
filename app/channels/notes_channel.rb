class NotesChannel < ApplicationCable::Channel

  def subscribed
    # total_request= Request.count
    # fulfilled = Request.where(fulfilled: 1).count
    # # @unfulfilled = Request.where(fulfilled: 0).count
    stream_from 'abc'
  end

  def receive(data)
   note = Note.find(data["id"])
   note.update!(text: data["text"])
   ActionCable.server.broadcast('abc', data["text"])
  end

  def away
    fulfilled = Request.where(fulfilled: 1).count
    # if(Note.find(1).text != fulfilled)
    #   note = Note.find(1)
    #   note.update!(text: fulfilled)
    #   ActionCable.server.broadcast('abc', fulfilled)
    # end
    ActionCable.server.broadcast('abc', fulfilled)
  end

  def unsubscribed

  end

end
