class ChangeForeignKeyForRequests7 < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :owner, references: :users, index: true
    add_foreign_key :requests, :users, column: :owner_id
  end
end
