class CartsController < ApplicationController

    def add_to_cart
      product = Product.find(params[:product_id])
      cart = current_user.cart
      cart_item = cart.cart_items.find_by(product_id: product.id)

      if cart_item
        cart_item.update(quantity: cart_item.quantity.to_i + 1)
      else
        cart_item = cart.cart_items.build(product_id: product.id, quantity: 1)
      end

      cart_item.save
      redirect_to landings_path
    end
end
