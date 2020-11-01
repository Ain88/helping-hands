class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :type
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
