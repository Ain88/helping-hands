class AddRepDate < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :rep_date, :datetime
  end
end
