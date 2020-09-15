class AddStat12 < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :fulfilled, :integer
  end
end
