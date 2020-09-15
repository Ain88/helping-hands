class Modifynote2 < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :fulfilled, :integer
  end
end
