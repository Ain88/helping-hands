class RequestsController < ApplicationController
  def index
       render json: Request.all
  end

  def create
     @request = Request.new(request_params)
     render json: @request

     if @request.save
       render json: {
         status: :created,
         request: @request
       }
     else
       render json: {
         status: 500,
         errors: @request.errors.full_messages
       }
     end
  end

  def show
    @request = Request.find(params[:id])
    render json: @request
  end

  def destroy
    Request.destroy(params[:id])
  end

private

  def request_params
    params.permit(:title, :type, :description, :location)
  end

end
