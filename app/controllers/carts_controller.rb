class CartsController < ApplicationController

  def show
    @carts = Cart.where(user_id: params[:id])
    num = params[:id]
    @num = num.to_i
  end

  def destroy
    cart = Cart.find(params[:id])
    cart.destroy
    redirect_to cart_path(current_user.id)
  end
end