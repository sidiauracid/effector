class EffectorsController < ApplicationController
  def index
    @effectors = Effector.all.includes(:genre)
    # @cart = Cart.new
    # redirect_to controller: :carts, action: :create
  end
end
