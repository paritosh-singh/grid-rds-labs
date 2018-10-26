class UserController < ApplicationController

  def change_color
    current_user.set_color params[:color]
    redirect_to board_index_path
  end


  def set_color
    current_user.update_board params[:row].to_i, params[:column].to_i
    redirect_to board_index_path
  end

end