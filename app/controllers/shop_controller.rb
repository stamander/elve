class ShopController < ApplicationController

  

  def index
    @shops = Shop.all
    
  end

  def new
    @shop= Shop.new

    
  
  end

  def create
    @shop= Shop.new(shop_params)
  
    if @shop.save
      flash[:denger] = "ありがとうございます。商品を承りました"
      redirect_to new_shop_path
   
    else
      flash[:denger] = "まだ未入力のものがあります"
      redirect_to new_shop_path
      
      
    end
  end



  def show
    
  end


 




  private
  def shop_params
    params.require(:shop).permit(:name,:kana,:phone_number,:mail,:adress_number,:adress,:number)
  end

end
