class ViewerController < ApplicationController
  def index
	@photos = Photo.find_photos
  end

  # GET /viewer/1
  # GET /viewer/1.xml
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @photo }
    end
  end

end
