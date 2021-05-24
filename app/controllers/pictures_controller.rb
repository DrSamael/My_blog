class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    # @picture = Picture.find(params[:other].split('/')[1])
  end

end
