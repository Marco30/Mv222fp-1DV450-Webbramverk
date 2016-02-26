class SessionsController < ApplicationController
    
   
    #man måste loga in för att få en togen som gör att man kan komuniserar med apien 
  def api_auth
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: { auth_token: encodeJWT(user), user_id: user.id }
    else
      render json: { error: 'Ogiltigt användarnamn eller lösenord' }, status: :unauthorized
    end
  end
  
end
