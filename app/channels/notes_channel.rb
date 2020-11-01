class NotesChannel < ApplicationCable::Channel

  def subscribed
    stream_from 'abc'
  end

  def receive(data)
   note = Note.find(data["id"])
   note.update!(text: data["text"])
   ActionCable.server.broadcast('abc', data["text"])
  end

  def away
    fulfilled = Request.where("cur_counter >= counter").count
    ActionCable.server.broadcast('abc', fulfilled)
  end

  def unsubscribed

  end

end
