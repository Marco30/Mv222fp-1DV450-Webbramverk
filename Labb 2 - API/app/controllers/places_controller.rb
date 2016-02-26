class PlacesController < ApplicationController
    
  before_action :api_authenticate, only: [:create, :update, :destroy]
  before_action :offset_params, only: [:index]
  
  def index
# if satser som vissar olika saker 
# platser en viss användare skapat  
    if params[:user_id].present?
      @user = User.find(params[:user_id])
      @places = @user.places.limit(@limit).offset(@offset)
#visar platser med samma namn som anvädnaren skickat med  
elsif params[:address].present?
      address_param = params[:address]
      @places = Place.limit(@limit).offset(@offset).where("address LIKE (?)", "%#{address_param}%")
# plataser som har en vissa tag
    elsif params[:tag_id].present?
      @tag = Tag.find(params[:tag_id])
      @places = @tag.places.limit(@limit).offset(@offset)
#vissat platser som liger inom 100 km från viss kordinat, med hjälp av Geocoder  
    elsif params[:latitude].present? && params[:longitude].present?
      @places = Place.limit(@limit).offset(@offset).near([params[:latitude], params[:longitude]], 100, :units => :km)
#all platser sorterade efter datum 
    else
      @places = Place.limit(@limit).offset(@offset).all.order("created_at DESC")
    end
    respond_with @places
  end
  
#uppdaterar en plats 
 def update
    place  = Place.find_by_id(params[:id].to_i)
    
    if place 
      place.tags.delete_all
      user = place.user
      
      if @token_payload["user_id"].to_i == user.id
       place.update(place_params)
        if place.save
          render json: place, status: :ok
        else
          error = ErrorMessage.new("Turistplatsen kunde inte uppdateras")
          render json: error, status: :bad_request
        end
      else
        error = ErrorMessage.new("Du kan inte uppdatera denna turistplatsen")
        render json: error, status: :forbidden
      end
    else
      error = ErrorMessage.new("Turistplatsen kunde inte uppdateras")
      render json: error, status: :bad_request
    end
  end

#skapar en plats
def create
    place = Place.new(place_params)
    
   #tag = Tag.new(tag_ids)
    
    place.user_id = @token_payload["user_id"]
    
    
   # if Tag.find_by_name(tag.name.downcase).present?
     # tag = Tag.find_by_name(tag.name.downcase)
    #end

  #tag.places << place
    
    if place.save 
      respond_with place, status: :created
    else
      error = ErrorMessage.new("Turistplatsen kunde inte skapas")
      render json: error, status: :bad_request
    end
  end
  
  # visar plats
    def show
    @place = Place.find(params[:id])
    render json: @place , :include => :tags
  end
  
  #tarbort plats
    def destroy
    place = Place.find_by_id(params[:id].to_i)
    
    if place
      user = place.user
      
      if @token_payload["user_id"].to_i == user.id
        if place.destroy
          respond_with status: :no_content
        else
          error = ErrorMessage.new("Turistplatsen kunde inte raderas")
          render json: error, status: :bad_request
        end
      else
        error = ErrorMessage.new("Du kan inte radera denna plats")
        render json: error, status: :forbidden
      end
    else
      error = ErrorMessage.new("Turistpaltsen kunde inte raderas")
      render json: error, status: :bad_request
    end
  end

  
  private
  
  def place_params
    json_params = ActionController::Parameters.new(JSON.parse(request.body.read))
    json_params.require(:place).permit(:address, :latitude, :longitude, tag_ids: [])
  end
  
  #def tag_ids
   # params[:tag_ids]
  #end
  
#private
  #def tag_params
   # json_params = ActionController::Parameters.new(JSON.parse(request.body.read))
  #json_params.require(:tag).permit(:nam, :address, :latitude, :longitude)
  #end
    
end
