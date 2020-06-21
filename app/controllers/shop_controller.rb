class ShopController < ApplicationController

  

  def index
  end

  def new
    @shop= Shop.new

    
  
  end

  def create
    @shop= Shop.new(shop_params)
    if @shop.save
      redirect_to products_path,notice: 'お間違いないですか？'
   
    else
      redirect_to products_path
      
      
    end
  end



  def show
    
  end


 




  private
  def shop_params
    params.require(:shop).permit(:name,:kana,:phone_number,:mail,:adress_number,:adress)
  end

end
