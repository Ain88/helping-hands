class AddReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :chat_rooms, :users, foreign_key: true
    add_reference :messages, :users, foreign_key: true
    add_reference :messages, :chat_rooms, foreign_key: true
  end
end
