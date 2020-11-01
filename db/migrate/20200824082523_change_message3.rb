class ChangeMessage3 < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :sender, references: :users, index: true
    add_foreign_key :messages, :users, column: :sender_id
    add_reference :messages, :requests, null: false, foreign_key: true
    add_reference :messages, :receiver, references: :users, index: true
    add_foreign_key :messages, :users, column: :receiver_id
    add_timestamps(:messages)
  end
end
