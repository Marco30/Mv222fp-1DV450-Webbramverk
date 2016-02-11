class UserApiKeysController < ApplicationController
    
         before_action :check#check_user
         
          def create# skapar ny apiKey
             
      UserApiKey.create(:api_user_id=>params[:api_user_id])
       
      redirect_to api_user_user_api_key_path(params[:api_user_id], params[:api_user_id]) #api_user_apikey_path #
             
         end
         
         def index # inte använt bara testat saker 
             
             api_user_id = params[:api_user_id]
             if api_user_id.nil?
                 @apikeys = UserApiKey.all 
             else
                 @user = ApiUser.find(params[:api_user_id])
                 @apikeys = @user.user_api_keys 
             end
             
             render :jason =>  @apikeys
             
         end

  def show # visar alla api keys en användare har 
     
      @user = ApiUser.find(params[:api_user_id])
                 @apikeys = @user.user_api_keys 
                
  end
  
  def destroy# tar bort en api kay
      

begin
   @apikeys = UserApiKey.find(params[:id])
   @apikeys.destroy
rescue ActiveRecord::RecordNotFound


 redirect_to api_user_user_api_key_path(params[:api_user_id], params[:api_user_id])
  
end
    
  end
  
  
  
  def admindestroyUserkey# tar bort en api kay
      

    begin
       @apikeys = UserApiKey.find(params[:id])
       @apikeys.destroy
    rescue ActiveRecord::RecordNotFound
    
      
         redirect_to admin_path
      
    end
    
  end
  
    
end
