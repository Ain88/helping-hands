class UsersController < ApplicationController

   def create
     @user = User.new(user_params)

     if @user.save
       login!
       render json: {
         status: :created,
         user: @user
       }
     else
       render json: {
         status: 500,
         errors: @user.errors.full_messages
       }
     end
   end

   def edit
    @user = User.find(params[:id])
    render json: @user
   end

   def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
   end

def index
    @users = User.all
    render json: {
      users: @users
    }
end

def show
    @user = User.find(params[:id])

   if @user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end

  # app.url_for(user.photo)

private

  def user_params
    params.permit(:f_name, :l_name, :email, :password, :password_confirmation, :photo)
  end

end
