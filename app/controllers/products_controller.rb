class ProductsController < ApplicationController
  def index
    @products = Product.includes (:images)
  end

 
  def new
    @product = Product.new
    @product.images.new
  end


  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
