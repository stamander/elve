class ShopController < ApplicationController
  def index
  end

  def new
    @exhibition= Exhibition.new
    @exhibition.images.new
  end

  def show
  end


  private
  def exhibition_params
    params.require(:exhibition).permit(:name,:price,images_attributes: [:src,:_destroy, :id])
  end

end
