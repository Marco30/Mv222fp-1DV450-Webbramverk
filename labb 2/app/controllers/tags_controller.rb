class TagsController < ApplicationController
    
      before_action :offset_params, only: [:index]
  

  def index
    @tags = Tag.limit(@limit).offset(@offset).all
    respond_with @tags
  end
  

  def show
    @tag = Tag.find(params[:id])
    respond_with @tag
  end
    
end
