class MessageBoardController < ApplicationController
	def view_board
    @messages = Message.all
  end
  def board_new
    @message = Message.new
  end
  def board_create
    @message = Message.new(params[:messages])
    if @message.save
      redirect_to '/message_board'
    else
      render '/new'
    end
  end
  private
  def message_params
    params.require(:messages).permit(:content)
  end
end
