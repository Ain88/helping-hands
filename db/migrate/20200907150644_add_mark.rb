class AddMark < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :check_mark, :integer
    add_column :enrollments, :check_mark, :integer
  end
end
