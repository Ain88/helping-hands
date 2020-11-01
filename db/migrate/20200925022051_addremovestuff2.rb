class Addremovestuff2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :enrollments_id, :integer
  end
end
