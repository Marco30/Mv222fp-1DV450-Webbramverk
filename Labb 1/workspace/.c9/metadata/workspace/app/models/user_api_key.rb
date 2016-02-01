{"filter":false,"title":"user_api_key.rb","tooltip":"/app/models/user_api_key.rb","undoManager":{"mark":17,"position":17,"stack":[[{"start":{"row":0,"column":37},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":3},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":4},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":10,"column":46},"action":"insert","lines":["belongs_to :user","  before_create :generate_new_value","  validates :value, uniqueness: true","","  def generate_new_value","    #http://railscasts.com/episodes/352-securing-an-api?view=asciicast","    begin","      self.value = SecureRandom.hex","    end while self.class.exists?(value: value)"],"id":5}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"remove","lines":["    "],"id":6}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":1},"action":"insert","lines":[" "],"id":7}],[{"start":{"row":2,"column":1},"end":{"row":2,"column":2},"action":"insert","lines":[" "],"id":8}],[{"start":{"row":7,"column":4},"end":{"row":7,"column":70},"action":"remove","lines":["#http://railscasts.com/episodes/352-securing-an-api?view=asciicast"],"id":9}],[{"start":{"row":3,"column":35},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":10},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":18},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":11},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":14},"end":{"row":2,"column":18},"action":"remove","lines":["user"],"id":12},{"start":{"row":2,"column":14},"end":{"row":2,"column":22},"action":"insert","lines":["api_user"]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":3},"action":"insert","lines":["#"],"id":13}],[{"start":{"row":4,"column":1},"end":{"row":4,"column":2},"action":"insert","lines":["#"],"id":14}],[{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"insert","lines":["#"],"id":15}],[{"start":{"row":8,"column":2},"end":{"row":8,"column":3},"action":"insert","lines":["#"],"id":16}],[{"start":{"row":10,"column":4},"end":{"row":10,"column":5},"action":"insert","lines":["#"],"id":17}],[{"start":{"row":11,"column":5},"end":{"row":11,"column":6},"action":"insert","lines":["#"],"id":18}],[{"start":{"row":12,"column":4},"end":{"row":12,"column":5},"action":"insert","lines":["#"],"id":19}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":12,"column":5},"end":{"row":12,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1454189950000,"hash":"993da4098419cca655e50dc980e86c7ccc0b05e6"}