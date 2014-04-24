class VideosController < ApplicationController
   layout 'application'

  def index
    @videos = Video.all.newest_first
    @randomvideo = Video.random
    @x = @randomvideo.url.reverse.chomp("=v?hctaw/moc.ebutuoy.www//:sptth").reverse
end

  def show
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      flash[:notice] = "Update Success!"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(video_params)
      flash[:notice] = "Update Success!"
      redirect_to(:action => 'show', :id => @video.id)
    else
      render('edit')
    end
  end

  def delete
    video = Video.find(params[:id]).destroy
    flash[:notice] = "Destruction Success!"
    redirect_to(:action => 'index')
  end


private

def video_params
  params.require(:video).permit(:title, :originator, :url, :category)
end

end
