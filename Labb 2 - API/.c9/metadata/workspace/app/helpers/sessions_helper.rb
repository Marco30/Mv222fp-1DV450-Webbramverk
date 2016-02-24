{"changed":true,"filter":false,"title":"sessions_helper.rb","tooltip":"/app/helpers/sessions_helper.rb","value":"module SessionsHelper\n    \n\n  \n  def api_authenticate\n    if request.headers[\"Authorization\"].present?\n      auth_header = request.headers[\"Authorization\"].split(' ').last\n      @token_payload = decodeJWT(auth_header)\n      if !@token_payload\n        render json: { error: \"Authenticate token ej korrekt\" }, status: :bad_request\n      else\n        @token_payload\n      end\n    else\n      render json: { error: \"Authorization-header måste inkluderas\" }, status: :forbidden\n    end\n  end\n  \n  def encodeJWT(user)\n    payload = { user_id: user.id, exp: exp=2.hours.from_now.to_i }\n    JWT.encode(payload, Rails.application.secrets.secret_key_base, \"HS512\") \n  end\n  \n  def decodeJWT(token)\n    payload = JWT.decode(token, Rails.application.secrets.secret_key_base, \"HS512\")\n    if payload[0][\"exp\"] >= Time.now.to_i\n      payload[0]\n    else\n      false\n    end\n  rescue \n    false\n  end\n    \nend\n","undoManager":{"mark":4,"position":7,"stack":[[{"start":{"row":0,"column":21},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":3},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":4},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":32,"column":5},"action":"insert","lines":[" #API-autentisering","  ","  def api_authenticate","    if request.headers[\"Authorization\"].present?","      auth_header = request.headers[\"Authorization\"].split(' ').last","      @token_payload = decodeJWT(auth_header)","      if !@token_payload","        render json: { error: \"Angiven token ej korrekt\" }, status: :bad_request","      else","        @token_payload","      end","    else","      render json: { error: \"Authorization-header måste inkluderas\" }, status: :forbidden","    end","  end","  ","  def encodeJWT(user)","    payload = { user_id: user.id, exp: exp=2.hours.from_now.to_i }","    JWT.encode(payload, Rails.application.secrets.secret_key_base, \"HS512\") ","  end","  ","  def decodeJWT(token)","    payload = JWT.decode(token, Rails.application.secrets.secret_key_base, \"HS512\")","    if payload[0][\"exp\"] >= Time.now.to_i","      payload[0]","    else","      false","    end","  rescue ","    false","  end"],"id":5}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":23},"action":"remove","lines":["     #API-autentisering"],"id":6}],[{"start":{"row":9,"column":31},"end":{"row":9,"column":38},"action":"remove","lines":["Angiven"],"id":7},{"start":{"row":9,"column":31},"end":{"row":9,"column":43},"action":"insert","lines":["authenticate"]}],[{"start":{"row":9,"column":31},"end":{"row":9,"column":32},"action":"remove","lines":["a"],"id":8}],[{"start":{"row":9,"column":31},"end":{"row":9,"column":32},"action":"insert","lines":["A"],"id":9}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":16,"column":5},"end":{"row":16,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1456328309454}