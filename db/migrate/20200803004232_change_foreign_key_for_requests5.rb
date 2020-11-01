class ChangeForeignKeyForRequests5 < ActiveRecord::Migration[6.0]
  def change
    rename_column :requests, :owner_id, :owner
  end
end
