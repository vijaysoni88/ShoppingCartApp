class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @products = Product.all
  end
end
