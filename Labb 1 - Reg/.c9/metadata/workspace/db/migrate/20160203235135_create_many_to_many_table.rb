{"filter":false,"title":"20160203235135_create_many_to_many_table.rb","tooltip":"/db/migrate/20160203235135_create_many_to_many_table.rb","undoManager":{"mark":56,"position":56,"stack":[[{"start":{"row":2,"column":44},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":3,"column":0},"end":{"row":3,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":3,"column":6},"end":{"row":4,"column":24},"action":"insert","lines":["  t.integer :category_id","      t.integer :post_id"],"id":3}],[{"start":{"row":3,"column":6},"end":{"row":3,"column":8},"action":"remove","lines":["  "],"id":4}],[{"start":{"row":3,"column":17},"end":{"row":3,"column":25},"action":"remove","lines":["category"],"id":5},{"start":{"row":3,"column":17},"end":{"row":3,"column":25},"action":"insert","lines":["api_user"]}],[{"start":{"row":4,"column":17},"end":{"row":4,"column":24},"action":"remove","lines":["post_id"],"id":6},{"start":{"row":4,"column":17},"end":{"row":4,"column":29},"action":"insert","lines":["user_api_key"]}],[{"start":{"row":5,"column":7},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":7},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":6,"column":4},"end":{"row":6,"column":57},"action":"insert","lines":["add_index :categories_posts, [:category_id, :post_id]"],"id":8}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":31},"action":"remove","lines":["categories_posts"],"id":9},{"start":{"row":6,"column":15},"end":{"row":6,"column":34},"action":"insert","lines":["many_to_many_tables"]}],[{"start":{"row":4,"column":29},"end":{"row":4,"column":32},"action":"insert","lines":["_id"],"id":10}],[{"start":{"row":6,"column":38},"end":{"row":6,"column":49},"action":"remove","lines":["category_id"],"id":11},{"start":{"row":6,"column":38},"end":{"row":6,"column":49},"action":"insert","lines":["api_user_id"]}],[{"start":{"row":6,"column":52},"end":{"row":6,"column":59},"action":"remove","lines":["post_id"],"id":12},{"start":{"row":6,"column":52},"end":{"row":6,"column":67},"action":"insert","lines":["user_api_key_id"]}],[{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"remove","lines":[":"],"id":13}],[{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"insert","lines":["\""],"id":14}],[{"start":{"row":3,"column":28},"end":{"row":3,"column":29},"action":"insert","lines":["\""],"id":15}],[{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"remove","lines":[":"],"id":16}],[{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["\""],"id":17}],[{"start":{"row":4,"column":32},"end":{"row":4,"column":33},"action":"insert","lines":["\""],"id":18}],[{"start":{"row":6,"column":37},"end":{"row":6,"column":38},"action":"remove","lines":[":"],"id":19}],[{"start":{"row":6,"column":37},"end":{"row":6,"column":38},"action":"insert","lines":["\""],"id":20}],[{"start":{"row":6,"column":49},"end":{"row":6,"column":50},"action":"insert","lines":["\""],"id":21}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":37},"action":"remove","lines":["many_to_many_tables"],"id":22}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["U"],"id":23}],[{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"insert","lines":["s"],"id":24}],[{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"insert","lines":["e"],"id":25}],[{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"insert","lines":["r"],"id":26}],[{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"insert","lines":["_"],"id":27}],[{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"insert","lines":["k"],"id":28}],[{"start":{"row":2,"column":24},"end":{"row":2,"column":25},"action":"insert","lines":["y"],"id":29}],[{"start":{"row":2,"column":24},"end":{"row":2,"column":25},"action":"remove","lines":["y"],"id":30}],[{"start":{"row":2,"column":24},"end":{"row":2,"column":25},"action":"insert","lines":["e"],"id":31}],[{"start":{"row":2,"column":25},"end":{"row":2,"column":26},"action":"insert","lines":["y"],"id":32}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"remove","lines":["U"],"id":33}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["s"],"id":34}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"remove","lines":["s"],"id":35}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["u"],"id":36}],[{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"insert","lines":["s"],"id":37}],[{"start":{"row":2,"column":27},"end":{"row":2,"column":28},"action":"insert","lines":["s"],"id":38}],[{"start":{"row":2,"column":28},"end":{"row":2,"column":29},"action":"insert","lines":[","],"id":39}],[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"insert","lines":[" "],"id":40}],[{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"insert","lines":[":"],"id":41}],[{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"insert","lines":["i"],"id":42}],[{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"insert","lines":["d"],"id":43}],[{"start":{"row":2,"column":33},"end":{"row":2,"column":34},"action":"insert","lines":["="],"id":44}],[{"start":{"row":2,"column":34},"end":{"row":2,"column":35},"action":"insert","lines":["<"],"id":45}],[{"start":{"row":2,"column":34},"end":{"row":2,"column":35},"action":"remove","lines":["<"],"id":46}],[{"start":{"row":2,"column":34},"end":{"row":2,"column":35},"action":"insert","lines":[">"],"id":47}],[{"start":{"row":2,"column":35},"end":{"row":2,"column":36},"action":"insert","lines":[" "],"id":48}],[{"start":{"row":2,"column":36},"end":{"row":2,"column":37},"action":"insert","lines":["f"],"id":49}],[{"start":{"row":2,"column":37},"end":{"row":2,"column":38},"action":"insert","lines":["a"],"id":50}],[{"start":{"row":2,"column":38},"end":{"row":2,"column":39},"action":"insert","lines":["l"],"id":51}],[{"start":{"row":2,"column":39},"end":{"row":2,"column":40},"action":"insert","lines":["s"],"id":52}],[{"start":{"row":2,"column":40},"end":{"row":2,"column":41},"action":"insert","lines":["e"],"id":53}],[{"start":{"row":6,"column":53},"end":{"row":6,"column":68},"action":"remove","lines":["user_api_key_id"],"id":54},{"start":{"row":6,"column":53},"end":{"row":6,"column":68},"action":"insert","lines":["user_api_key_id"]}],[{"start":{"row":6,"column":52},"end":{"row":6,"column":53},"action":"remove","lines":[":"],"id":55}],[{"start":{"row":6,"column":52},"end":{"row":6,"column":53},"action":"insert","lines":["\""],"id":56}],[{"start":{"row":6,"column":68},"end":{"row":6,"column":69},"action":"insert","lines":["\""],"id":57}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":34},"action":"remove","lines":["many_to_many_tables"],"id":58},{"start":{"row":6,"column":15},"end":{"row":6,"column":25},"action":"insert","lines":["users_keys"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":4},"end":{"row":6,"column":61},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1454545551438,"hash":"22f8d7a0325ee5f99d872fc5d5dcb4dc888731db"}