class AdminsController < ApplicationController
    
   before_action :check_admin

  def show # används för att visa alla användare i admin view   
    @users = ApiUser.all
  end
  
end
