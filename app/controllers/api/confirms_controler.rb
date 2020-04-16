class Api::ConfirmsController < ApplicationController
  def create
    Confirm.create(user_id: params[:user_id], effector_id: params[:effector_id])
  end
end
