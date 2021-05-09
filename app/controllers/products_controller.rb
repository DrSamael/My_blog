class ProductsController < ApplicationController
  require "prawn"
  include ActionController::Live

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to products_path
  end

  def download_pdf
    product = Product.find_by(id: params[:id])
    send_data generate_pdf(product),
              filename: "#{product.name}.pdf",
              type: "application/pdf"
  end

  def stream
    response.headers['Content-Type'] = 'text/event-stream'
    10.times {
      response.stream.write "#{params[:message]}\n"
      sleep 1
    }
    response.stream.close
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :image, :price, :status)
  end

  def generate_pdf(product)
    Prawn::Document.new do
      text product.name, align: :center
      text "description: #{product.description}"
    end.render
  end

end
