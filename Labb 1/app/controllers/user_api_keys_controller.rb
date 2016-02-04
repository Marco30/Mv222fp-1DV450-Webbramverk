class UserApiKeysController < ApplicationController
    
         before_action :check_user
         
          def create
             
      UserApiKey.create(:api_user_id=>params[:api_user_id])
       
      redirect_to api_user_user_api_key_path(params[:api_user_id], params[:api_user_id]) #api_user_apikey_path #
             
         end
         
         def index
             
             api_user_id = params[:api_user_id]
             if api_user_id.nil?
                 @apikeys = UserApiKey.all 
             else
                 @user = ApiUser.find(params[:api_user_id])
                 @apikeys = @user.user_api_keys 
             end
             
             render :jason =>  @apikeys
             
         end

  def show
    #@key = @current_user.user_api_keys
    #@key = ApiUser.find_by_id(@current_user.id)
      #@user = ApiUser.find(params[:api_user_id])
    #@apikeys = UserApiKey.find(params[:api_user_id])
     #@apikeys = @user.user_api_keys.find(params[:id])
     
      @user = ApiUser.find(params[:api_user_id])
                 @apikeys = @user.user_api_keys 
                 
	#	@domain = Domain.new(:apikey => @apikey)
  end
  
  def destroy
      

begin
   @apikeys = UserApiKey.find(params[:id])
   @apikeys.destroy
rescue ActiveRecord::RecordNotFound
  redirect_to api_user_user_api_key_path(params[:api_user_id], params[:api_user_id])
  
end


   #@apikeys = UserApiKey.find(params[:id])
    # @apikeys.destroy
    
  end
    
end
