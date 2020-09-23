class EnrollmentsController < ApplicationController

  def index
    @enrollment = Enrollment.all
    render :json => @enrollment, :include => {:requests => {:only => [:id, :rep_date, :check_mark, :cur_counter]}}
  end

  def edit
   @enrollment = Enrollment.find(params[:id])
   render json: @enrollment
  end

  def update
   @enrollment = Enrollment.find(params[:id])
   @enrollment.update(enrollment_params)
   render json: @enrollment
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    @request = Request.find(enrollment_params[:requests_id])
    @request.increment!(:cur_counter)
    if((Request.where(@request.cur_counter == @request.counter) || @request.check_mark == 1) == true)
      @request.update!(fulfilled: 1)
    else
      @request.update!(fulfilled: 0)
    end

     if @enrollment.save
       render json: {
         status: :created,
         enrollment: @enrollment
       }
     else
       render json: {
         status: 500,
         errors: @enrollment.errors.full_messages
       }
     end
  end

  def show
    @enrollment = Enrollment.find(params[:id])
    render json: @enrollment
  end

  def destroy
    Enrollment.destroy(params[:id])
  end

private

  def enrollment_params
    params.permit(:user_id, :request_id, :finished, :check_mark, :requests, :finished)
  end

end
