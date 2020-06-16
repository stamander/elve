class ProductsController < ApplicationController
  def index
    @products = Product.includes(:images)
  end

 
  def new
    @product = Product.new
    @product.images.new
  end


  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show 
    @product = Product.find(params[:id])
    
  end
  

  def edit
  end

  def update
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

def product_params
  params.require(:product).permit(:name, :price,:explain, images_attributes: [:src])
end


end
