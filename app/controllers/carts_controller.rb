class CartsController < ApplicationController

  def new
    @cart = Cart.new
  end

  def create
    Cart.create(cart_params)
    redirect_to root_path
  end

  # private
  # def cart_params
  #   params.require(:cart).merge(user_id: current_user.id, effector_id: effector.id)
  # end
end
