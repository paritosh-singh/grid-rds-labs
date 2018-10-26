class BoardController < ApplicationController


  def index
    puts current_user.current_color
    @board = Board.get_board
  end

end