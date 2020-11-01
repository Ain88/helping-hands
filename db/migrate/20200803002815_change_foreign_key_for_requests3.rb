class ChangeForeignKeyForRequests3 < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :owner_id, :integer
  end
end
