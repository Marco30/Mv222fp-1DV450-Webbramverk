{"filter":false,"title":"20160221162903_users.rb","tooltip":"/db/migrate/20160221162903_users.rb","undoManager":{"mark":6,"position":6,"stack":[[{"start":{"row":1,"column":12},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":3},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":4},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":3,"column":4},"end":{"row":12,"column":80},"action":"insert","lines":["     create_table \"users\" do |t|","    t.string   \"username\"","    t.string   \"email\"","    t.string   \"password_digest\"","    ","    t.timestamps null: false","  end","  ","  add_index \"users\", [\"email\"], name: \"index_users_on_email\", unique: true","  add_index \"users\", [\"username\"], name: \"index_users_on_username\", unique: true"],"id":5}],[{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"remove","lines":["\""],"id":6}],[{"start":{"row":3,"column":27},"end":{"row":3,"column":28},"action":"remove","lines":["\""],"id":7}],[{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"insert","lines":[":"],"id":8}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":9},"end":{"row":13,"column":4},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1456073237178,"hash":"8850ba2c8266595d90a844fdeb4c28816c7cb6b2"}