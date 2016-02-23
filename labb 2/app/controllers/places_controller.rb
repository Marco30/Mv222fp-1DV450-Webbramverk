class PlacesController < ApplicationController
    
  before_action :api_authenticate, only: [:create, :update, :destroy]
  before_action :offset_params, only: [:index]
  
  def index

    if params[:user_id].present?
      @user = User.find(params[:user_id])
      @places = @user.places.limit(@limit).offset(@offset)

    elsif params[:tag_id].present?
      @tag = Tag.find(params[:tag_id])
      @places = @tag.places.limit(@limit).offset(@offset)

    elsif params[:latitude].present? && params[:longitude].present?

      @places = Place.limit(@limit).offset(@offset).near([params[:latitude], params[:longitude]], 80, :units => :km)

    elsif params[:address].present?
      address_param = params[:address]
      @places = Place.limit(@limit).offset(@offset).where("address LIKE (?)", "%#{address_param}%")

    else
      @places = Place.limit(@limit).offset(@offset).all.order("created_at DESC")
    end
    respond_with @places
  end
  
  
 def update
    place  = Place.find_by_id(params[:id].to_i)
    
    if place 
      attraction.tags.delete_all
      user = place.user
      
      if @token_payload["user_id"].to_i == user.id
       place.update(place_params)
        if place.save
          render json: place, status: :ok
        else
          error = ErrorMessage.new("Resursen kunde inte uppdateras", "Turistattraktionen kunde inte uppdateras")
          render json: error, status: :bad_request
        end
      else
        error = ErrorMessage.new("Du får inte uppdatera denna resurs.", "Du får inte uppdatera denna turistattraktion.")
        render json: error, status: :forbidden
      end
    else
      error = ErrorMessage.new("Resursen kunde inte uppdateras", "Turistattraktionen kunde inte uppdateras")
      render json: error, status: :bad_request
    end
  end


  def create
    place = Place.new(place_params)
    
    place.user_id = @token_payload["user_id"]
    
    if place.save
      respond_with place, status: :created
    else
      error = ErrorMessage.new("Resursen kunde inte skapas", "Turistattraktionen kunde inte skapas")
      render json: error, status: :bad_request
    end
  end
  
    def show
    @place = Place.find(params[:id])
    render json: @place , :include => :tags
  end
  
  
    def destroy
    place = Place.find_by_id(params[:id].to_i)
    
    if place
      user = place.user
      
      if @token_payload["user_id"].to_i == user.id
        if place.destroy
          respond_with status: :no_content
        else
          error = ErrorMessage.new("Resursen kunde inte raderas", "Turistattraktionen kunde inte raderas")
          render json: error, status: :bad_request
        end
      else
        error = ErrorMessage.new("Du får inte radera denna resurs.", "Du får inte radera denna turistattraktion.")
        render json: error, status: :forbidden
      end
    else
      error = ErrorMessage.new("Resursen kunde inte uppdateras", "Turistattraktionen kunde inte uppdateras")
      render json: error, status: :bad_request
    end
  end

  
  private
  
  def place_params
    json_params = ActionController::Parameters.new(JSON.parse(request.body.read))
    json_params.require(:place).permit(:address, :latitude, :longitude, tag_ids: [] )
  end
    
end
