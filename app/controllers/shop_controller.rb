class ShopController < ApplicationController
  def index
  end

  def new
    @ex= Profile.new
    @profile.images.new
  end

  def show
  end


  private

end
