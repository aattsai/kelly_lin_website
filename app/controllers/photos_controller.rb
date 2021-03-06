class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.new(photo_params)
    if photo.save
      redirect_to photos_path
    else
      flash[:warning] = photo.errors.full_messages.join(". ")
      redirect_to new_photo_path
    end
  end

  def photo_params
    params.require(:photo).permit(:description, :url)
  end

end
