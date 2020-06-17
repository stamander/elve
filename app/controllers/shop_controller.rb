class ShopController < ApplicationController
  def index
  end

  def new
    @shop= Shop.new

    
  
  end

  def create
    @shop= Shop.new(shop_params)
    if @shop.save
      redirect_to products_path
   
    else
      redirect_to products_path
      
      
    end
  end



  def show
  end

  require 'payjp'

  def purchase
    Payjp.api_key = "秘密鍵"
    Payjp::Charge.create(
      amount: 809, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end


  private
  def shop_params
    params.require(:shop).permit(:name,:kana,:phone_number,:mail,:adress_number,:adress)
  end

end
