class SessionsController < ApplicationController
    
     
  def api_auth
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: { auth_token: encodeJWT(user), user_id: user.id }
    else
      render json: { error: 'Ogiltigt användarnamn eller lösenord' }, status: :unauthorized
    end
  end
  
end
