class AddRepDate2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :rep_date, :datetime
    add_column :requests, :rep_date, :datetime
  end
end
