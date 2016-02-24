class UsersController < ApplicationController
    
     before_action :offset_params, only: [:index]
  
  
  def index
    @users = User.limit(@limit).offset(@offset).all
    respond_with @users
  end
  
  
  def show
    @user = User.find(params[:id])
    respond_with @user
  end
  
    
end
