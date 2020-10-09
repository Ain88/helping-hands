class AddColumnMessage2 < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :check_mark, :integer
  end
end
