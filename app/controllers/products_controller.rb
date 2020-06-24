class ProductsController < ApplicationController

  before_action :basic_auth,only: [:new]
  before_action :set_product, only: [:show, :purchase, :pay]

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
    
    @product = Product.find_by(id:params[:id])
    @product.destroy
    redirect_to root_path
  end
  def purchase
    
  end



  def pay
    @product = Product.find(params[:id])
    Payjp.api_key = Rails.application.credentials[:payjp][:secret_key]
    Payjp::Charge.create(
      amount: @product.price, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
      
    )

    redirect_to action: :done

  end


  def done
  end


private

  def set_product
    @product = Product.find(params[:id])
  end

def product_params
  params.require(:product).permit(:name, :price,:explain,:number, images_attributes: [:src])
end


def basic_auth
  authenticate_or_request_with_http_basic do |username, password|
    username == 'admin' && password == '2222'
  end
end



end
