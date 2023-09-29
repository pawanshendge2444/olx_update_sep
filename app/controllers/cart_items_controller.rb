class CartItemsController < ApplicationController
  def index
    @item = CartItem.all
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path, notice: 'Product removed from cart.'
  end
end
