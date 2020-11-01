class Addremovestuff < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :enrollments_id, :integer
    add_foreign_key "messages", "enrollments", column: "enrollments_id"
  end
end
