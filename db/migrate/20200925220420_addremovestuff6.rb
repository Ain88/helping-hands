class Addremovestuff6 < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key "enrollments", "users", column: "users_id"
  end
end
