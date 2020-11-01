class AddStat < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :final_counter
      t.timestamps
    end
  end
end
