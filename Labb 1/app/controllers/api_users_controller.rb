class ApiUsersController < ApplicationController
    
      before_action :check_user, only: [:delete]
  before_action :check_admin, only: [:delete_user]

  def new
    @user = ApiUser.new
  end

  def create
    @user = ApiUser.new(user_params)

    if @user.save
      log_in @user
      #@user.user_api_keys = UserApiKey.create
       
       UserApiKey.create(:api_user_id=>@user.id)
       
      #@user_api_key = UserApiKey.create()
       
     # @current_user.user_api_keys << @user_api_key
   
      redirect_to api_user_user_api_key_path(@user.id, @user.id) #api_user_apikey_path #
    else
      render :action => "new"
    end
  end

  def destroy
    @user = ApiUser.find_by_id(params[:id])
    @user.destroy
    
    if is_admin_logged_in?
      flash[:success] = 'User and key has been deleted.'
      redirect_to admin_path
    else
      log_out
      flash[:warning] = 'User and key has been deleted. Register for a new key.'
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:api_user).permit(:email, :password, :password_confirmation)

  end
    
end
