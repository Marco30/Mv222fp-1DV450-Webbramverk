module SessionsHelper
    # kodar och avkodar token 
  def encodeJWT(user)
    payload = { user_id: user.id, exp: exp=2.hours.from_now.to_i }
    JWT.encode(payload, Rails.application.secrets.secret_key_base, "HS512") 
  end
  
  def decodeJWT(token)
    payload = JWT.decode(token, Rails.application.secrets.secret_key_base, "HS512")
    if payload[0]["exp"] >= Time.now.to_i
      payload[0]
    else
      false
    end
  rescue 
    false
  end
  
   #kontrollerar att autentiserar token till hör användaren 
  def api_authenticate
    if request.headers["Authorization"].present?
      auth_header = request.headers["Authorization"].split(' ').last
      @token_payload = decodeJWT(auth_header)
      if !@token_payload
        render json: { error: "Authenticate token är inte korrekt" }, status: :bad_request
      else
        @token_payload
      end
    else
      render json: { error: "Authorization-header måste vara med" }, status: :forbidden
    end
  end
  
    
end
