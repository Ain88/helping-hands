class EnrollmentsController < ApplicationController

  def index
    render json: Enrollment.all
  end

  def edit
   @enrollment = Enrollment.find(params[:id])
   render json: @enrollment
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    @request = Request.find(params[:request_id])
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
    params.require(:enrollment).permit(:user_id, :request_id, :finished)
  end

end
