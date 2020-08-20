class AddColumnMessage < ActiveRecord::Migration[6.0]
  def change
    add_column :chat_rooms, :title, :string
    add_column :messages, :body, :string
  end
end
