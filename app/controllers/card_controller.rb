class CardController < ApplicationController

  require 'payjp'
  
  def create
  end

  def new
  end

  def purchase
    Payjp.api_key = "pk_test_f64e59fe273594de973da4c0"
    Payjp::Charge.create(
      amount: @product.price, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end

end
