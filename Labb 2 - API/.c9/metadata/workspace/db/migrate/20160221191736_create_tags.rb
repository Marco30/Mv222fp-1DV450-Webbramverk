{"filter":false,"title":"20160221191736_create_tags.rb","tooltip":"/db/migrate/20160221191736_create_tags.rb","undoManager":{"mark":3,"position":3,"stack":[[{"start":{"row":2,"column":3},"end":{"row":5,"column":7},"action":"remove","lines":[" create_table :tags do |t|","","      t.timestamps null: false","    end"],"id":2},{"start":{"row":2,"column":3},"end":{"row":7,"column":75},"action":"insert","lines":["create_table :tags do |t|","    t.string   \"name\"","    "," t.timestamps null: false","  end","    add_index \"tags\", [\"name\"], name: \"index_tags_on_name\", unique: true   "]}],[{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"remove","lines":["\""],"id":3}],[{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"insert","lines":[":"],"id":4}],[{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"remove","lines":["\""],"id":5}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":20},"end":{"row":3,"column":20},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":35,"mode":"ace/mode/ruby"}},"timestamp":1456085180000,"hash":"5deabb359838d22280a52281beb1f91de8ab6135"}