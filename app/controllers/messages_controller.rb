class MessagesController < ApplicationController

  def index
    @message = Message.all
    render :json => @message, :include => { :sender => {:only => [:f_name, :l_name, :id]},
                                        :requests => {:only => [:id, :title, :owner_id]},
                                        :receiver => {:only => [:id, :f_name, :l_name]}}
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
    params.require(:message).permit(:requests_id, :sender_id, :receiver_id, :body, :created_at )
  end

end
