class ChangeForeignKeyForRequests6 < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :owner, :integer
  end
end
