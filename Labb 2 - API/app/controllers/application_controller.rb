class ApplicationController < ActionController::Base
  
  
   protect_from_forgery with: :null_session
    #protect_from_forgery with: :exception
  
  include SessionsHelper
  
  
  before_action :check_apikey
  
  respond_to :json
  
  rescue_from ActionController::UnknownFormat, with: :raise_bad_format
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  
  OFFSET = 0
  LIMIT = 20
  
  protected

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
  
   def record_not_found
     @error = ErrorMessage.new("Resursen hittades inte", "Turistplatsen hittades inte")
    respond_with @error, status: :not_found
  end

  def raise_bad_format
    @error = ErrorMessage.new("API:et stöder inte formatet som är begärd ", "API:et stöder inte formatet som är begärd")
    respond_with @error, status: :bad_request
  end
  
    def check_apikey
    apikey = request.headers['X-ApiKey']
    @apiuser = ApiKey.where(apikey: apikey).first if apikey
    unless @apiuser
      self.headers['WWW-Authenticate'] = 'Token realm = "Places"'
      render json: { error: "API-nyckel måste inkluderas" }, status: :forbidden
      return false
    end
  end
  
end

 class ErrorMessage
  
  def initialize(dev_mess, usr_mess)
    @developerMessage = dev_mess
    @userMessage = usr_mess
  end
  
end
