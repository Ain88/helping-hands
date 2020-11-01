class AddStat7 < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key "enrollments", "requests"
  end
end
