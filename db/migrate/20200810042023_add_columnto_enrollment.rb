class AddColumntoEnrollment < ActiveRecord::Migration[6.0]
  def change
    add_column :enrollments, :finished, :integer
  end
end
