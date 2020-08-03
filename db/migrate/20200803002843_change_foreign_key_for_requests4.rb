class ChangeForeignKeyForRequests4 < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :owner, index: true
    add_foreign_key :requests, :users, column: :owner_id
  end
end
