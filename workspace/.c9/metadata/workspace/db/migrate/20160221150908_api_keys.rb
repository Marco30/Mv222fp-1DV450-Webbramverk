{"filter":false,"title":"20160221150908_api_keys.rb","tooltip":"/db/migrate/20160221150908_api_keys.rb","undoManager":{"mark":13,"position":13,"stack":[[{"start":{"row":1,"column":12},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":[" create_table \"api_users\", force: :cascade do |t|","    t.string   \"apikey\"","    t.datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false","  end"],"id":3}],[{"start":{"row":2,"column":30},"end":{"row":2,"column":47},"action":"remove","lines":[" force: :cascade "],"id":4}],[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"remove","lines":[","],"id":5}],[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"insert","lines":[" "],"id":6}],[{"start":{"row":4,"column":3},"end":{"row":5,"column":40},"action":"remove","lines":[" t.datetime \"created_at\", null: false","    t.datetime \"updated_at\", null: false"],"id":7},{"start":{"row":4,"column":3},"end":{"row":4,"column":27},"action":"insert","lines":["t.timestamps null: false"]}],[{"start":{"row":3,"column":23},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":8},{"start":{"row":4,"column":0},"end":{"row":4,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":5},"action":"remove","lines":[" "],"id":9}],[{"start":{"row":2,"column":35},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":10},{"start":{"row":3,"column":0},"end":{"row":3,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":5,"column":4},"end":{"row":5,"column":24},"action":"insert","lines":["t.integer  \"user_id\""],"id":11}],[{"start":{"row":5,"column":24},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":12},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"remove","lines":["\""],"id":13}],[{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"insert","lines":[":"],"id":14}],[{"start":{"row":2,"column":27},"end":{"row":2,"column":28},"action":"remove","lines":["\""],"id":15}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":3},"end":{"row":8,"column":5},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1456072069526,"hash":"bdc07fa7bcf8f09258ea2eff1f69e7594eaff0c9"}