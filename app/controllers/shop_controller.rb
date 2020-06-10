class ShopController < ApplicationController
  def index
  end

  def create
    @exhibition= Exhibition.new(exhibition_params)
    if @exhibition.save
      redirect_to new_shop_path
   
    else
      redirect_to new_shop_path
      
      
    end
  end

  def new
    @exhibition= Exhibition.new
    @exhibition.images.new
  end

  def show
  end


  private
  def exhibition_params
    params.require(:exhibition).permit(:name,:price,:explaon,images_attributes: [:src,:_destroy, :id])
  end

end
