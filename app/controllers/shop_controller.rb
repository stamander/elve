class ShopController < ApplicationController
  def index
  end

  def new
    @shop= Shop.new

    
  
  end

  def create
    @shop= Shop.new(shop_params)
    if @shop.save
      redirect_to shop_index_path
   
    else
      redirect_to shop_index_path
      
      
    end
  end



  def show
  end


  private
  def exhibition_params
    params.require(:exhibition).permit(:name,:price,:explain,images_attributes: [:src])
  end

end
