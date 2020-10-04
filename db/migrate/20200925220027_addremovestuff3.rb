class Addremovestuff3 < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key "enrollments", "users", column: "user_id"
  end
end
