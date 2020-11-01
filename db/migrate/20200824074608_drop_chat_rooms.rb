class DropChatRooms < ActiveRecord::Migration[6.0]
  def change
    drop_table :chat_rooms
  end
end
