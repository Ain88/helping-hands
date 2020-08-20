class ChatRoomsController < ApplicationController

  def index
    render json: ChatRoom.all
  end

  def edit
   @chat_room = ChatRoom.find(params[:id])
   render json: @chat_room
  end

  def create
    @chat_room = ChatRoom.new(chat_room_params)

     if @chat_room.save
       render json: {
         status: :created,
         chat_room: @chat_room
       }
     else
       render json: {
         status: 500,
         errors: @chat_room.errors.full_messages
       }
     end
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
    render json: @chat_room
  end

  def destroy
    ChatRoom.destroy(params[:id])
  end

private

  def chat_room_params
    params.require(:chat_room).permit(:users_id, :title)
  end

end
