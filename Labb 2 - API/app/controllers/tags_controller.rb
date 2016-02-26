class TagsController < ApplicationController
    before_action :api_authenticate, only: [:create]
      before_action :offset_params, only: [:index]
  
  #rescue_from ActionController::UnknownFormat, with: :raise_bad_format
  #rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

#alla tagar och platser som till hör tagen 
  def index
    @tags = Tag.limit(@limit).offset(@offset).all
    respond_with @tags
  end
  
#visar vald tag 
  def show
    @tag = Tag.find(params[:id])
    respond_with @tag
  end
    

#skapar tag 
 def create
    tag = Tag.new(tag_params)
    if tag.save
      render json: tag, status: :created
    else
      render json: {error: 'kunde inte skapa tag'}, status: :raise_bad_format
  
    end
  end


  def tag_params

        json_params = ActionController::Parameters.new(JSON.parse(request.body.read))
  json_params.require(:tag).permit(:name)
end


end