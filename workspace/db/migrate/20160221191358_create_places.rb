class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
    t.string   :address
    t.integer  :user_id
    t.float    :latitude
    t.float    :longitude
    t.timestamps null: false
  end
 add_index "places", ["address"], name: "index_places_on_address", unique: true
  add_index "places", ["user_id"], name: "index_places_on_user_id"
  end
end
