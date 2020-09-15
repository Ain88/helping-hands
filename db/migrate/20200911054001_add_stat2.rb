class AddStat2 < ActiveRecord::Migration[6.0]
  def change
    add_reference :stats, :requests, null: false, foreign_key: true
    add_reference :stats, :enrollments, null: false, foreign_key: true
    add_reference :stats, :messages, null: false, foreign_key: true
  end
end
