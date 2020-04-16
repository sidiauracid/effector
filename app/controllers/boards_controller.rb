class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(board_params)
  end

  def destroy
    board = Board.find(params[:id])
    board.destroy
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    board = Board.find(params[:id])
    board.update(board_params)
  end

  def show
    @board = Board.find(params[:id])
    @comment = Comment.new
    @comments = @board.comments.includes(:user)
  end

  private
  def board_params
    params.require(:board).permit(:title, :image, :text).merge(user_id: current_user.id)
  end

end
