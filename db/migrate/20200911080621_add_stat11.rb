class AddStat11 < ActiveRecord::Migration[6.0]
  def change
    rename_column :enrollments, :request_id, :requests_id
  end
end
