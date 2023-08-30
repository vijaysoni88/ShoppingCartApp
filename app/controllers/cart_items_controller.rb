class CartItemsController < ApplicationController
  def create
    @cart = current_user.cart || Cart.create(user: current_user)
    @product = Product.find(params[:product_id])
    @cart_item = @cart.cart_items.build(product: @product, price: @product.price)
    if @cart_item.save
      redirect_to @cart, notice: 'Item added to cart.'
    else
      redirect_to @product, alert: 'Failed to add item to cart.'
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to @cart_item.cart, notice: 'Item removed from cart.'
  end
end
