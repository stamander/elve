class ProductsController < ApplicationController
  def index
    @products = Product.includs(:images).order('created_at')
  end

  def new
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
