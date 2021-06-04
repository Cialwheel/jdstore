class CartsController < ApplicationController

  def index
    @products = Product.all
  end

  def clean
    current_cart.clean!
    flash[:warning] = "already clean"
    redirect_to carts_path
  end

  def checkout
    @order =Order.new 
  end


end
