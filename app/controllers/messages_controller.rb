class MessagesController < ApplicationController

  def index
    @message = Message.all
    render :json => @message, :include => { :sender => {:only => [:f_name, :l_name, :id]},
                                        :requests => {:only => [:id, :title, :owner_id]}}
  end

  def edit
   @message = Message.find(params[:id])
   render json: @message
  end

  def create
    @message = Message.new(message_params)
    if(@message.sender_id == @message.requests.owner_id)
      @enr = Enrollment.where(user_id: @message.receiver_id, requests_id: @message.requests_id)
    else
      @enr = Enrollment.where(user_id: @message.sender_id, requests_id: @message.requests_id)
    end

    @enr.increment_counter(:finished, 1, touch: true)

    if((Enrollment.where("finished>=? and check_mark=? and requests_id=?", 2,1,@message.requests_id).count >= @message.requests.counter) || @message.requests.check_mark == 1) == true
      @message.requests.update!(fulfilled: 1)
    else
      @message.requests.update!(fulfilled: 0)
    end
    # ((Enrollment.where("finished>=? and check_mark=? and requests_id=?", 2,1,@message.requests_id).count >= Request.find_by(id:@message.requests_id).counter) || Request.find_by(id:@message.requests_id).check_mark == 1) == true ?
    #   Request.find(@message.requests_id).fulfilled = 1 : ""

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
