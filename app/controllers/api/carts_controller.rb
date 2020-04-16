class Api::CartsController < ApplicationController
  def create
    Cart.create(user_id: params[:user_id], effector_id: params[:effector_id])
  end
end