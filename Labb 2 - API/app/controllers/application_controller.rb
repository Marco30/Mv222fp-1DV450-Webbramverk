class ApplicationController < ActionController::Base
  
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  
  include SessionsHelper
  
  
  before_action :check_apikey
  
  respond_to :json
  
  rescue_from ActionController::UnknownFormat, with: :raise_bad_format
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::RoutingError, with: :error_occurred
  
  
  #mina offset och limit värden 
  OFFSET = 0
  LIMIT = 30
  
  protected
  
  #ändrar offset och limit värden till det som användaren väljer annar använda standard värden jag lagt
  def offset_params  
    if params[:offset].present?
      @offset = params[:offset].to_i
    end
    if params[:limit].present?
      @limit = params[:limit].to_i
    end

    @offset ||= OFFSET
    @limit  ||= LIMIT
  end
  
  #fell hanteringe 
  
  def error_occurred
  error = ErrorMessage.new("sidan finns inte eller så du kan inte besöka dena plats")
        render json: error, status: :forbidden
   end

   def record_not_found
     @error = ErrorMessage.new("Resursen hittades inte")
    respond_with @error, status: :not_found
  end

  def raise_bad_format
    @error = ErrorMessage.new("API:et stöder inte formatet som är begärd")
    respond_with @error, status: :bad_request
  end
  
  #kontrollerar att apikey existerar och ger fel medelanden om den inte finns 
    def check_apikey
    apikey = request.headers['ApiKey']
    @apiuser = ApiKey.where(apikey: apikey).first if apikey
    unless @apiuser
      self.headers['WWW-Authenticate'] = 'Token realm = "Places"'
      render json: { error: "API-nyckel måste inkluderas" }, status: :forbidden
      return false
    end
  end
  
end

 class ErrorMessage
  
  def initialize(errormess)
    @Message = errormess
  end
  
end
