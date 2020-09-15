class NotesChannel < ApplicationCable::Channel

  def subscribed
    # @total_request= Request.count
    # fulfilled = Request.where(fulfilled: 1).count
    # # @unfulfilled = Request.where(fulfilled: 0).count
    stream_from 'note'
    # ActionCable.server.broadcast("hello")
  end

  def receive(data)
    if(data["text"] == "stats") then
      ActionCable.server.broadcast('note', Request.all.count.to_s)
    else
      ActionCable.server.broadcast('note', data)
    end
  #  note = Note.find(data["id"])
  #  note.update!(text: data["text"])
  #  ActionCable.server.broadcast('note', data)
 end

  def unsubscribed

  end

end
