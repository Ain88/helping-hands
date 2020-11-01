class Modifynote < ActiveRecord::Migration[6.0]
  def change
    change_column(:notes, :text, :string)
  end
end
