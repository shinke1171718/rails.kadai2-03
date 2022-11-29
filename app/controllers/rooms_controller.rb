class RoomsController < ApplicationController
  def index
    @room =current_user.rooms
  end

  def new
    @room = current_user.rooms.new
  end

  def create
    @room = current_user.rooms.new(params.require(:room).permit(:room_name,:room_Introduction,:price,:address,:room_image))
    if@room.save
      redirect_to :rooms,notice: "保存しました。"
    else
      flash[:alert] = "問題が発生しました。"
      render "new"
    end
  end
end
