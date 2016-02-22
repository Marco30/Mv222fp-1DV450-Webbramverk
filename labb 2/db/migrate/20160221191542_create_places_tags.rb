class CreatePlacesTags < ActiveRecord::Migration
  def change
    create_table :places_tags, :id => false do|t|
      t.integer :place_id
      t.integer :tag_id
    end
    
  add_index "places_tags", ["place_id"], name: "index_places_tags_on_place_id"
  add_index "places_tags", ["tag_id"], name: "index_places_tags_on_tag_id"
  end
end
