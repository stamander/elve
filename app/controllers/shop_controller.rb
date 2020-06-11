class ShopController < ApplicationController
  def index
  end

  def create
    @exhibition= Exhibition.new(shop_params)
    if @xhibition.save
      redirect_to new_shop_path
   
    else
      redirect_to new_shop_path
      
      
    end
  end

  def new
    @exhibition= Shop.new
  
  end

  def show
  end


  private
  def shop_params
    params.require(:exhibition).permit(:name,:price,:explaon,images_attributes: [:src,:_destroy, :id])
  end

end
