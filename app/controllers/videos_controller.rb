class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    video = Video.new(video_params)
    if video.save
      redirect_to videos_path
    else
      flash[:warning] = video.errors.full_messages.join(". ")
      redirect_to new_video_path
    end
  end

  def video_params
    params.require(:video).permit(:name, :url)
  end

end
