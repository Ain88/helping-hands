class ChangeColumnNameInRequests2 < ActiveRecord::Migration[6.0]
  def self.up
    change_table :requests do |t|
      t.change :location, :string
    end
   end
   def self.down
     change_table :requests do |t|
       t.change :location, :text
     end
   end
end
