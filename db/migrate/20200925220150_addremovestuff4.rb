class Addremovestuff4 < ActiveRecord::Migration[6.0]
  def change
    rename_column :enrollments, :user_id, :users_id
  end
end
