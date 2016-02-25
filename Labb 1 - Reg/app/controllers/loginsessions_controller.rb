class LoginsessionsController < ApplicationController
    
  def new

  end
  
   def create_admin# admin login 
    admin = Admin.find_by(name: params[:session][:name].downcase)

    if admin && admin.authenticate(params[:session][:password])
      log_admin_in admin
      redirect_to admin_path
    else
      flash.now[:danger] = 'Bad name/password combination!'
      render 'new_admin'
    end
  end

  def create# användare login 
    user = ApiUser.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to api_user_user_api_key_path(user.id, user.id) #apikey_path #api_user_user_api_key_path 
    else
      flash.now[:danger] = 'Bad email/password combination!'
      render 'new'
    end
  end

  def destroy# logaut användare 
    log_out
    flash[:info] = 'Goodbye, You are logged out'
    redirect_to root_path
  end

 
  def destroy_admin# logaut admin
    log_admin_out
    flash[:info] = 'Goodbye, You are logged out'
    redirect_to root_path
  end
    
end
