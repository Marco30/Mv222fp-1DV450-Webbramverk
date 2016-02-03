{"filter":false,"title":"apiusers_controller.rb","tooltip":"/app/controllers/apiusers_controller.rb","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":0,"column":48},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":3},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":37,"column":5},"end":{"row":38,"column":0},"action":"insert","lines":["",""],"id":5},{"start":{"row":38,"column":0},"end":{"row":38,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":4},"end":{"row":37,"column":5},"action":"insert","lines":[" before_action :check_user, only: [:delete]","  before_action :check_admin, only: [:delete_user]","","  def new","    @user = User.new","  end","","  def create","    @user = User.new(user_params)","","    if @user.save","      log_in @user","      @user.api_key = ApiKey.create","      redirect_to apikey_path","    else","      render :action => \"new\"","    end","  end","","  def destroy","    user = User.find_by_id(params[:id])","    user.destroy","    if is_admin_logged_in?","      flash[:success] = 'User and key has been deleted.'","      redirect_to admin_path","    else","      log_out","      flash[:warning] = 'User and key has been deleted. Register for a new key.'","      redirect_to root_path","    end","  end","","  private","  def user_params","    params.require(:user).permit(:email, :password, :password_confirmation)","  end"],"id":4}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":4},"end":{"row":2,"column":4},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1454419791868,"hash":"56d3586d75f9dd6b43c6eb6e73fe4f01e70129a5"}