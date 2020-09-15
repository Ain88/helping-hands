class EnrollmentsController < ApplicationController

  def index
    @enrollment = Enrollment.all
    render :json => @enrollment, :include => {:requests => {:only => [:id, :rep_date, :check_mark]}}
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
    params.require(:enrollment).permit(:user_id, :request_id, :finished, :check_mark, :requests)
  end

end
