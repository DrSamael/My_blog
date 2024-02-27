class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    # @picture = Picture.find(params[:other].split('/')[1])
    @page = define_page
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

  def define_page
    Region.establish_connection(:first_app_db)
    # Perform your query using FirstAppModel
    results = Region.first

    # Reset the connection to the default
    Region.establish_connection(:default)

    results
  end

  def picture_params
    params.require(:picture).permit(:name, :image, :imageable_type, :imageable_id, :lock_version)
  end

end
