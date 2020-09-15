class AddStat5 < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key "enrollments", "requests", column: "request_id"
  end
end
