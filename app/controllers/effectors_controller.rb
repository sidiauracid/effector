class EffectorsController < ApplicationController
  def index
    @effectors = Effector.all.includes(:genre)
  end
end
