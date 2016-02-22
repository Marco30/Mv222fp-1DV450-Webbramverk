{"changed":true,"filter":false,"title":"user.rb","tooltip":"/app/models/user.rb","value":"class User < ActiveRecord::Base\n    \n  \n  has_many :attractions, :dependent => :destroy\n  \n  \n  has_secure_password\n  \nend\n","undoManager":{"mark":5,"position":9,"stack":[[{"start":{"row":0,"column":31},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":3},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":23},"action":"insert","lines":["has_secure_password"],"id":4}],[{"start":{"row":1,"column":1},"end":{"row":2,"column":23},"action":"remove","lines":["   ","    has_secure_password"],"id":5},{"start":{"row":1,"column":1},"end":{"row":18,"column":21},"action":"insert","lines":[" include Rails.application.routes.url_helpers ","  ","  has_many :attractions, :dependent => :destroy","  ","  def serializable_hash (options={})","    options = {","      only: [:username, :id],","      include: [:attractions],","      methods: [:self_link]","    }.update(options)","    super(options)","  end","  ","  def self_link","    { :self => \"#{Rails.configuration.baseurl}#{user_path(self)}\" }","  end","  ","  has_secure_password"]}],[{"start":{"row":18,"column":21},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":6},{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":0,"column":31},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":7},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":6,"column":0},"end":{"row":17,"column":5},"action":"remove","lines":["  def serializable_hash (options={})","    options = {","      only: [:username, :id],","      include: [:attractions],","      methods: [:self_link]","    }.update(options)","    super(options)","  end","  ","  def self_link","    { :self => \"#{Rails.configuration.baseurl}#{user_path(self)}\" }","  end"],"id":8}],[{"start":{"row":5,"column":2},"end":{"row":6,"column":0},"action":"remove","lines":["",""],"id":9}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":47},"action":"remove","lines":["  include Rails.application.routes.url_helpers "],"id":10}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"remove","lines":["",""],"id":11}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":1,"column":4},"end":{"row":1,"column":4},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1456086452313}