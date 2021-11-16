class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    # @picture = Picture.find(params[:other].split('/')[1])
  end

  def new
    @picture = Picture.new
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def create
    @article = Picture.new(picture_params)

    if @article.save
      redirect_to @article
    else
      flash.now[:alert] = 'something was wrong!!!'
      render 'new'
    end
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update(picture_params)
      redirect_to @picture, notice: 'UPDATED'
    else
      render 'edit'
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :image, :imageable_type, :imageable_id, :lock_version)
  end

end
