class ChangeColumnNameInRequests < ActiveRecord::Migration[6.0]
  def change
    rename_column :requests, :type, :typev
  end
end
