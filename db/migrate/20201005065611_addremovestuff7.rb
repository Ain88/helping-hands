class Addremovestuff7 < ActiveRecord::Migration[6.0]
  def change
    create_table "profiles", force: :cascade do |t|
      t.string "photo"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end
end
