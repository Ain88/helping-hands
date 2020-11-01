class AddStat10 < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key "enrollments", "requests", column: "request_id"
  end
end
