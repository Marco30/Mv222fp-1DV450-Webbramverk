{"filter":false,"title":"schema.rb","tooltip":"/db/schema.rb","undoManager":{"mark":4,"position":4,"stack":[[{"start":{"row":13,"column":46},"end":{"row":13,"column":51},"action":"remove","lines":["50908"],"id":2,"ignore":true},{"start":{"row":13,"column":46},"end":{"row":13,"column":51},"action":"insert","lines":["62956"]}],[{"start":{"row":22,"column":0},"end":{"row":61,"column":0},"action":"insert","lines":["  create_table \"attractions\", force: :cascade do |t|","    t.string   \"address\"","    t.integer  \"user_id\"","    t.float    \"latitude\"","    t.float    \"longitude\"","    t.datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end","","  add_index \"attractions\", [\"address\"], name: \"index_attractions_on_address\", unique: true","  add_index \"attractions\", [\"user_id\"], name: \"index_attractions_on_user_id\"","","  create_table \"attractions_tags\", id: false, force: :cascade do |t|","    t.integer \"attraction_id\"","    t.integer \"tag_id\"","  end","","  add_index \"attractions_tags\", [\"attraction_id\"], name: \"index_attractions_tags_on_attraction_id\"","  add_index \"attractions_tags\", [\"tag_id\"], name: \"index_attractions_tags_on_tag_id\"","","  create_table \"tags\", force: :cascade do |t|","    t.string   \"name\"","    t.datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end","","  add_index \"tags\", [\"name\"], name: \"index_tags_on_name\", unique: true","","  create_table \"users\", force: :cascade do |t|","    t.string   \"username\"","    t.string   \"email\"","    t.string   \"password_digest\"","    t.datetime \"created_at\",      null: false","    t.datetime \"updated_at\",      null: false","  end","","  add_index \"users\", [\"email\"], name: \"index_users_on_email\", unique: true","  add_index \"users\", [\"username\"], name: \"index_users_on_username\", unique: true","",""],"id":3,"ignore":true}],[{"start":{"row":13,"column":46},"end":{"row":13,"column":55},"action":"remove","lines":["62956) do"],"id":4,"ignore":true},{"start":{"row":13,"column":46},"end":{"row":18,"column":5},"action":"insert","lines":["70608) do","","  create_table \"api_keys\", force: :cascade do |t|","    t.datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end"]}],[{"start":{"row":13,"column":46},"end":{"row":13,"column":51},"action":"remove","lines":["70608"],"id":5,"ignore":true},{"start":{"row":13,"column":46},"end":{"row":13,"column":51},"action":"insert","lines":["91736"]},{"start":{"row":20,"column":16},"end":{"row":20,"column":24},"action":"remove","lines":["api_user"]},{"start":{"row":20,"column":16},"end":{"row":20,"column":21},"action":"insert","lines":["place"]},{"start":{"row":21,"column":0},"end":{"row":23,"column":0},"action":"remove","lines":["    t.string   \"apikey\"","    t.integer  \"user_id\"",""]},{"start":{"row":25,"column":16},"end":{"row":25,"column":26},"action":"remove","lines":["attraction"]},{"start":{"row":25,"column":16},"end":{"row":25,"column":26},"action":"insert","lines":["places_tag"]},{"start":{"row":26,"column":6},"end":{"row":43,"column":84},"action":"remove","lines":["string   \"address\"","    t.integer  \"user_id\"","    t.float    \"latitude\"","    t.float    \"longitude\"","    t.datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end","","  add_index \"attractions\", [\"address\"], name: \"index_attractions_on_address\", unique: true","  add_index \"attractions\", [\"user_id\"], name: \"index_attractions_on_user_id\"","","  create_table \"attractions_tags\", id: false, force: :cascade do |t|","    t.integer \"attraction_id\"","    t.integer \"tag_id\"","  end","","  add_index \"attractions_tags\", [\"attraction_id\"], name: \"index_attractions_tags_on_attraction_id\"","  add_index \"attractions_tags\", [\"tag_id\"], name: \"index_attractions_tags_on_tag_id\""]},{"start":{"row":26,"column":6},"end":{"row":28,"column":5},"action":"insert","lines":["datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end"]},{"start":{"row":31,"column":0},"end":{"row":32,"column":0},"action":"remove","lines":["    t.string   \"name\"",""]},{"start":{"row":35,"column":2},"end":{"row":40,"column":32},"action":"remove","lines":["add_index \"tags\", [\"name\"], name: \"index_tags_on_name\", unique: true","","  create_table \"users\", force: :cascade do |t|","    t.string   \"username\"","    t.string   \"email\"","    t.string   \"password_digest\""]},{"start":{"row":35,"column":2},"end":{"row":35,"column":46},"action":"insert","lines":["create_table \"users\", force: :cascade do |t|"]},{"start":{"row":36,"column":28},"end":{"row":36,"column":33},"action":"remove","lines":["     "]},{"start":{"row":37,"column":28},"end":{"row":37,"column":33},"action":"remove","lines":["     "]},{"start":{"row":40,"column":0},"end":{"row":43,"column":0},"action":"remove","lines":["  add_index \"users\", [\"email\"], name: \"index_users_on_email\", unique: true","  add_index \"users\", [\"username\"], name: \"index_users_on_username\", unique: true","",""]}],[{"start":{"row":16,"column":6},"end":{"row":18,"column":6},"action":"insert","lines":["string   \"apikey\"","    t.integer  \"user_id\"","    t."],"id":6,"ignore":true},{"start":{"row":23,"column":6},"end":{"row":25,"column":5},"action":"remove","lines":["datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end"]},{"start":{"row":23,"column":6},"end":{"row":32,"column":66},"action":"insert","lines":["string   \"address\"","    t.integer  \"user_id\"","    t.float    \"latitude\"","    t.float    \"longitude\"","    t.datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end","","  add_index \"places\", [\"address\"], name: \"index_places_on_address\", unique: true","  add_index \"places\", [\"user_id\"], name: \"index_places_on_user_id\""]},{"start":{"row":34,"column":29},"end":{"row":34,"column":40},"action":"insert","lines":[" id: false,"]},{"start":{"row":35,"column":6},"end":{"row":37,"column":5},"action":"remove","lines":["datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end"]},{"start":{"row":35,"column":6},"end":{"row":40,"column":74},"action":"insert","lines":["integer \"place_id\"","    t.integer \"tag_id\"","  end","","  add_index \"places_tags\", [\"place_id\"], name: \"index_places_tags_on_place_id\"","  add_index \"places_tags\", [\"tag_id\"], name: \"index_places_tags_on_tag_id\""]},{"start":{"row":43,"column":0},"end":{"row":44,"column":0},"action":"insert","lines":["    t.string   \"name\"",""]},{"start":{"row":48,"column":2},"end":{"row":48,"column":46},"action":"remove","lines":["create_table \"users\", force: :cascade do |t|"]},{"start":{"row":48,"column":2},"end":{"row":53,"column":32},"action":"insert","lines":["add_index \"tags\", [\"name\"], name: \"index_tags_on_name\", unique: true","","  create_table \"users\", force: :cascade do |t|","    t.string   \"username\"","    t.string   \"email\"","    t.string   \"password_digest\""]},{"start":{"row":54,"column":28},"end":{"row":54,"column":33},"action":"insert","lines":["     "]},{"start":{"row":55,"column":28},"end":{"row":55,"column":33},"action":"insert","lines":["     "]},{"start":{"row":58,"column":0},"end":{"row":61,"column":0},"action":"insert","lines":["  add_index \"users\", [\"email\"], name: \"index_users_on_email\", unique: true","  add_index \"users\", [\"username\"], name: \"index_users_on_username\", unique: true","",""]}]]},"ace":{"folds":[],"scrolltop":229.0166244506836,"scrollleft":0,"selection":{"start":{"row":31,"column":13},"end":{"row":31,"column":19},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1456071748000,"hash":"308b66bf9933b098ac5ce47dec3838937cd8f399"}