class AddCountToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :address, :string
    add_column :requests, :counter, :integer
    add_column :requests, :cur_counter, :integer
    add_column :requests, :is_active, :integer
  end
end
