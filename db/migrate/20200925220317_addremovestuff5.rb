class Addremovestuff5 < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key "enrollments", "users", column: "users_id"
  end
end
