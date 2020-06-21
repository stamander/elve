class ProductsController < ApplicationController

  before_action :basic_auth,only: [:new,:destroy]
  before_action :set_product, only: [:show, :purchase, :pay]

  def index
    @products = Product.includes(:images)
    
    

  end

 
  def new
    
    @product = Product.new
    @product.images.new
    @users = User.select("")
    @products = Product.select("name")
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
  def purchase
    # :authenticate_user!
  end



  def pay
    @product = Product.find(params[:id])
    Payjp.api_key = "sk_test_413ed119caa9d393f8fd9bc1"
    Payjp::Charge.create(
      amount: @product.price, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
      
    )

    redirect_to action: :done

  end


  def done
    @product= Product.find(params[:id])
    @product.update( shops: current_user.id)
  end


private

  def set_product
    @product = Product.find(params[:id])
  end

def product_params
  params.require(:product).permit(:name, :price,:explain, images_attributes: [:src])
end


def basic_auth
  authenticate_or_request_with_http_basic do |username, password|
    username == 'admin' && password == '2222'
  end
end



end
