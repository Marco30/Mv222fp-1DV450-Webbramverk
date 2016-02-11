{"filter":false,"title":"user_api_keys_controller.rb","tooltip":"/app/controllers/user_api_keys_controller.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":31,"column":17},"end":{"row":32,"column":0},"action":"remove","lines":["",""],"id":445}],[{"start":{"row":31,"column":16},"end":{"row":31,"column":17},"action":"remove","lines":[" "],"id":446}],[{"start":{"row":27,"column":0},"end":{"row":27,"column":4},"action":"remove","lines":["    "],"id":447}],[{"start":{"row":26,"column":50},"end":{"row":27,"column":0},"action":"remove","lines":["",""],"id":448}],[{"start":{"row":33,"column":13},"end":{"row":33,"column":14},"action":"insert","lines":["#"],"id":449}],[{"start":{"row":33,"column":14},"end":{"row":33,"column":15},"action":"insert","lines":["#"],"id":450}],[{"start":{"row":33,"column":15},"end":{"row":33,"column":16},"action":"insert","lines":[" "],"id":451}],[{"start":{"row":33,"column":15},"end":{"row":33,"column":16},"action":"remove","lines":[" "],"id":452}],[{"start":{"row":33,"column":14},"end":{"row":33,"column":15},"action":"remove","lines":["#"],"id":453}],[{"start":{"row":33,"column":14},"end":{"row":33,"column":15},"action":"insert","lines":[" "],"id":454}],[{"start":{"row":33,"column":15},"end":{"row":33,"column":16},"action":"insert","lines":["t"],"id":455}],[{"start":{"row":33,"column":16},"end":{"row":33,"column":17},"action":"insert","lines":["a"],"id":456}],[{"start":{"row":33,"column":17},"end":{"row":33,"column":18},"action":"insert","lines":["r"],"id":457}],[{"start":{"row":33,"column":18},"end":{"row":33,"column":19},"action":"insert","lines":[" "],"id":458}],[{"start":{"row":33,"column":19},"end":{"row":33,"column":20},"action":"insert","lines":["b"],"id":459}],[{"start":{"row":33,"column":20},"end":{"row":33,"column":21},"action":"insert","lines":["o"],"id":460}],[{"start":{"row":33,"column":21},"end":{"row":33,"column":22},"action":"insert","lines":["r"],"id":461}],[{"start":{"row":33,"column":22},"end":{"row":33,"column":23},"action":"insert","lines":["t"],"id":462}],[{"start":{"row":33,"column":23},"end":{"row":33,"column":24},"action":"insert","lines":[" "],"id":463}],[{"start":{"row":33,"column":24},"end":{"row":33,"column":25},"action":"insert","lines":["e"],"id":464}],[{"start":{"row":33,"column":25},"end":{"row":33,"column":26},"action":"insert","lines":["n"],"id":465}],[{"start":{"row":33,"column":26},"end":{"row":33,"column":27},"action":"insert","lines":[" "],"id":466}],[{"start":{"row":33,"column":27},"end":{"row":33,"column":28},"action":"insert","lines":["a"],"id":467}],[{"start":{"row":33,"column":28},"end":{"row":33,"column":29},"action":"insert","lines":["p"],"id":468}],[{"start":{"row":33,"column":29},"end":{"row":33,"column":30},"action":"insert","lines":["i"],"id":469}],[{"start":{"row":33,"column":30},"end":{"row":33,"column":31},"action":"insert","lines":[" "],"id":470}],[{"start":{"row":33,"column":31},"end":{"row":33,"column":32},"action":"insert","lines":["k"],"id":471}],[{"start":{"row":33,"column":32},"end":{"row":33,"column":33},"action":"insert","lines":["a"],"id":472}],[{"start":{"row":33,"column":33},"end":{"row":33,"column":34},"action":"insert","lines":["y"],"id":473}],[{"start":{"row":44,"column":0},"end":{"row":46,"column":22},"action":"remove","lines":["","   #@apikeys = UserApiKey.find(params[:id])","    # @apikeys.destroy"],"id":474}],[{"start":{"row":43,"column":0},"end":{"row":44,"column":0},"action":"remove","lines":["",""],"id":475}],[{"start":{"row":42,"column":3},"end":{"row":43,"column":0},"action":"remove","lines":["",""],"id":476}],[{"start":{"row":39,"column":35},"end":{"row":40,"column":0},"action":"insert","lines":["",""],"id":477}],[{"start":{"row":40,"column":0},"end":{"row":41,"column":0},"action":"insert","lines":["",""],"id":478}],[{"start":{"row":41,"column":0},"end":{"row":44,"column":11},"action":"insert","lines":["   if current_user != @user and !is_admin","            # flash[:info] = \"You have no access to that page -.-\"","            redirect_to current_user","        end"],"id":479}],[{"start":{"row":44,"column":11},"end":{"row":45,"column":0},"action":"insert","lines":["",""],"id":480},{"start":{"row":45,"column":0},"end":{"row":45,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":41,"column":6},"end":{"row":41,"column":31},"action":"remove","lines":["current_user != @user and"],"id":481}],[{"start":{"row":44,"column":4},"end":{"row":44,"column":8},"action":"remove","lines":["    "],"id":482}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":4},"action":"remove","lines":["    "],"id":483}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":1},"action":"insert","lines":[" "],"id":484}],[{"start":{"row":44,"column":1},"end":{"row":44,"column":2},"action":"insert","lines":[" "],"id":485}],[{"start":{"row":44,"column":1},"end":{"row":44,"column":2},"action":"remove","lines":[" "],"id":486}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":1},"action":"remove","lines":[" "],"id":487}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":4},"action":"insert","lines":["    "],"id":488}],[{"start":{"row":41,"column":3},"end":{"row":41,"column":4},"action":"insert","lines":[" "],"id":489}],[{"start":{"row":43,"column":12},"end":{"row":43,"column":36},"action":"remove","lines":["redirect_to current_user"],"id":491},{"start":{"row":43,"column":12},"end":{"row":43,"column":34},"action":"insert","lines":["redirect_to admin_path"]}],[{"start":{"row":46,"column":1},"end":{"row":46,"column":2},"action":"insert","lines":["#"],"id":492}],[{"start":{"row":41,"column":8},"end":{"row":41,"column":9},"action":"remove","lines":["!"],"id":493}],[{"start":{"row":46,"column":2},"end":{"row":46,"column":3},"action":"remove","lines":[" "],"id":494}],[{"start":{"row":46,"column":1},"end":{"row":46,"column":2},"action":"remove","lines":["#"],"id":495}],[{"start":{"row":46,"column":1},"end":{"row":46,"column":2},"action":"insert","lines":["#"],"id":496}],[{"start":{"row":46,"column":2},"end":{"row":46,"column":3},"action":"insert","lines":["#"],"id":497}],[{"start":{"row":46,"column":2},"end":{"row":46,"column":3},"action":"remove","lines":["#"],"id":498}],[{"start":{"row":41,"column":0},"end":{"row":45,"column":8},"action":"remove","lines":["    if  is_admin","            # flash[:info] = \"You have no access to that page -.-\"","            redirect_to admin_path","    end","        "],"id":499}],[{"start":{"row":42,"column":1},"end":{"row":42,"column":2},"action":"remove","lines":["#"],"id":500}],[{"start":{"row":46,"column":5},"end":{"row":47,"column":0},"action":"insert","lines":["",""],"id":501},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":47,"column":2},"end":{"row":48,"column":0},"action":"insert","lines":["",""],"id":502},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":48,"column":2},"end":{"row":49,"column":0},"action":"insert","lines":["",""],"id":503},{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":49,"column":2},"end":{"row":50,"column":0},"action":"insert","lines":["",""],"id":504},{"start":{"row":50,"column":0},"end":{"row":50,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":49,"column":2},"end":{"row":50,"column":0},"action":"insert","lines":["",""],"id":505},{"start":{"row":50,"column":0},"end":{"row":50,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":50,"column":2},"end":{"row":63,"column":5},"action":"insert","lines":[" def destroy# tar bort en api kay","      ","","begin","   @apikeys = UserApiKey.find(params[:id])","   @apikeys.destroy","rescue ActiveRecord::RecordNotFound","",""," redirect_to api_user_user_api_key_path(params[:api_user_id], params[:api_user_id])","  ","end","    ","  end"],"id":506}],[{"start":{"row":50,"column":7},"end":{"row":50,"column":8},"action":"insert","lines":["a"],"id":507}],[{"start":{"row":50,"column":8},"end":{"row":50,"column":9},"action":"insert","lines":["d"],"id":508}],[{"start":{"row":50,"column":9},"end":{"row":50,"column":10},"action":"insert","lines":["m"],"id":509}],[{"start":{"row":50,"column":10},"end":{"row":50,"column":11},"action":"insert","lines":["i"],"id":510}],[{"start":{"row":50,"column":11},"end":{"row":50,"column":12},"action":"insert","lines":["n"],"id":511}],[{"start":{"row":50,"column":7},"end":{"row":50,"column":8},"action":"remove","lines":["a"],"id":512}],[{"start":{"row":50,"column":7},"end":{"row":50,"column":8},"action":"insert","lines":["A"],"id":513}],[{"start":{"row":50,"column":19},"end":{"row":50,"column":20},"action":"insert","lines":["U"],"id":514}],[{"start":{"row":50,"column":20},"end":{"row":50,"column":21},"action":"insert","lines":["s"],"id":515}],[{"start":{"row":50,"column":21},"end":{"row":50,"column":22},"action":"insert","lines":["e"],"id":516}],[{"start":{"row":50,"column":22},"end":{"row":50,"column":23},"action":"insert","lines":["r"],"id":517}],[{"start":{"row":50,"column":23},"end":{"row":50,"column":24},"action":"insert","lines":["k"],"id":518}],[{"start":{"row":50,"column":24},"end":{"row":50,"column":25},"action":"insert","lines":["e"],"id":519}],[{"start":{"row":50,"column":25},"end":{"row":50,"column":26},"action":"insert","lines":["y"],"id":520}],[{"start":{"row":59,"column":1},"end":{"row":59,"column":83},"action":"remove","lines":["redirect_to api_user_user_api_key_path(params[:api_user_id], params[:api_user_id])"],"id":521},{"start":{"row":59,"column":1},"end":{"row":59,"column":23},"action":"insert","lines":["redirect_to admin_path"]}],[{"start":{"row":50,"column":7},"end":{"row":50,"column":8},"action":"remove","lines":["A"],"id":522}],[{"start":{"row":50,"column":7},"end":{"row":50,"column":8},"action":"insert","lines":["a"],"id":523}],[{"start":{"row":58,"column":0},"end":{"row":58,"column":18},"action":"insert","lines":["log_admin_in admin"],"id":524}],[{"start":{"row":58,"column":0},"end":{"row":58,"column":1},"action":"insert","lines":[" "],"id":525}],[{"start":{"row":58,"column":0},"end":{"row":58,"column":19},"action":"remove","lines":[" log_admin_in admin"],"id":526},{"start":{"row":58,"column":0},"end":{"row":60,"column":28},"action":"insert","lines":[" if is_admin_logged_in?# när man tar bort som admin","      flash[:success] = 'User has been deleted'","      redirect_to admin_path"]}],[{"start":{"row":61,"column":0},"end":{"row":61,"column":23},"action":"remove","lines":[" redirect_to admin_path"],"id":527}],[{"start":{"row":58,"column":0},"end":{"row":61,"column":0},"action":"remove","lines":[" if is_admin_logged_in?# när man tar bort som admin","      flash[:success] = 'User has been deleted'","      redirect_to admin_path",""],"id":528},{"start":{"row":58,"column":0},"end":{"row":65,"column":7},"action":"insert","lines":["  if is_admin_logged_in?# när man tar bort som admin","      flash[:success] = 'User has been deleted'","      redirect_to admin_path","    else# när man tar bort som användare","      log_out","      flash[:warning] = 'your user and key has been deleted'","      redirect_to root_path","    end"]}],[{"start":{"row":58,"column":2},"end":{"row":58,"column":4},"action":"insert","lines":["  "],"id":529}],[{"start":{"row":58,"column":2},"end":{"row":59,"column":47},"action":"remove","lines":["  if is_admin_logged_in?# när man tar bort som admin","      flash[:success] = 'User has been deleted'"],"id":530}],[{"start":{"row":59,"column":18},"end":{"row":59,"column":28},"action":"remove","lines":["admin_path"],"id":531},{"start":{"row":59,"column":18},"end":{"row":59,"column":42},"action":"insert","lines":["redirect_to current_user"]}],[{"start":{"row":59,"column":18},"end":{"row":59,"column":30},"action":"remove","lines":["redirect_to "],"id":532}],[{"start":{"row":60,"column":0},"end":{"row":63,"column":27},"action":"remove","lines":["    else# när man tar bort som användare","      log_out","      flash[:warning] = 'your user and key has been deleted'","      redirect_to root_path"],"id":533}],[{"start":{"row":61,"column":0},"end":{"row":61,"column":7},"action":"remove","lines":["    end"],"id":534}],[{"start":{"row":60,"column":0},"end":{"row":61,"column":0},"action":"remove","lines":["",""],"id":535}],[{"start":{"row":59,"column":30},"end":{"row":60,"column":0},"action":"remove","lines":["",""],"id":536}],[{"start":{"row":53,"column":0},"end":{"row":53,"column":4},"action":"insert","lines":["    "],"id":537},{"start":{"row":54,"column":0},"end":{"row":54,"column":4},"action":"insert","lines":["    "]},{"start":{"row":55,"column":0},"end":{"row":55,"column":4},"action":"insert","lines":["    "]},{"start":{"row":56,"column":0},"end":{"row":56,"column":4},"action":"insert","lines":["    "]},{"start":{"row":57,"column":0},"end":{"row":57,"column":4},"action":"insert","lines":["    "]},{"start":{"row":58,"column":0},"end":{"row":58,"column":4},"action":"insert","lines":["    "]},{"start":{"row":59,"column":0},"end":{"row":59,"column":4},"action":"insert","lines":["    "]},{"start":{"row":60,"column":0},"end":{"row":60,"column":4},"action":"insert","lines":["    "]},{"start":{"row":61,"column":0},"end":{"row":61,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":50,"column":2},"end":{"row":50,"column":3},"action":"remove","lines":[" "],"id":540}],[{"start":{"row":50,"column":1},"end":{"row":50,"column":2},"action":"remove","lines":[" "],"id":541}],[{"start":{"row":50,"column":0},"end":{"row":50,"column":1},"action":"remove","lines":[" "],"id":542}],[{"start":{"row":49,"column":2},"end":{"row":50,"column":0},"action":"remove","lines":["",""],"id":543}],[{"start":{"row":49,"column":2},"end":{"row":50,"column":0},"action":"insert","lines":["",""],"id":544},{"start":{"row":50,"column":0},"end":{"row":50,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":24},"end":{"row":2,"column":25},"action":"insert","lines":["#"],"id":545}],[{"start":{"row":2,"column":24},"end":{"row":2,"column":30},"action":"insert","lines":["check_"],"id":546}],[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"remove","lines":["_"],"id":547}],[{"start":{"row":59,"column":9},"end":{"row":59,"column":34},"action":"remove","lines":[" redirect_to current_user"],"id":548},{"start":{"row":59,"column":9},"end":{"row":59,"column":31},"action":"insert","lines":["redirect_to admin_path"]}]]},"ace":{"folds":[],"scrolltop":420,"scrollleft":0,"selection":{"start":{"row":63,"column":5},"end":{"row":63,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1455188164085,"hash":"cef65bd18706df35c2491a5342435a8c7b1c9865"}