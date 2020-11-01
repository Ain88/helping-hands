class ChangeForeignKeyForProjects < ActiveRecord::Migration[6.0]
  def change
     rename_column :requests, :user_id, :owner_id
  end
end
