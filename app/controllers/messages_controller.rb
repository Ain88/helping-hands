class MessagesController < ApplicationController

  def index
    render json: Message.all
  end

  def edit
   @message = Message.find(params[:id])
   render json: @message
  end

  def create
    @message = Message.new(message_params)

     if @message.save
       render json: {
         status: :created,
         message: @message
       }
     else
       render json: {
         status: 500,
         errors: @message.errors.full_messages
       }
     end
  end

  def show
    @message = Message.find(params[:id])
    render json: @message
  end

  def destroy
    Message.destroy(params[:id])
  end

private

  def message_params
    params.require(:message).permit(:chat_rooms_id, :users_id, :body )
  end

end
