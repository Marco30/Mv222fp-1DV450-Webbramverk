class AdminsController < ApplicationController
    
   before_action :check_admin

  def show
    @users = ApiUser.all
  end
  
end
