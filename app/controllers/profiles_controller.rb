class ProfilesController < ApplicationController

def index
    @profiles = Profile.all

    if @profiles
      render json: {
        profiless: @profiles
      }
    else
      render json: {
        status: 500,
        errors: ['no profiles found'],
      }
    end
end

def show
    @profile = Profile.find(params[:id])
   if @profile
      render json: {
        profile: @profile
      }
    else
      render json: {
        status: 500,
        errors: ['profile not found']
      }
    end
  end

  def create
    @profile.gid.attach(params[:file])
    photo = url_for(@profile.gid)
    photo: photo

    @profile = Profile.new(profile_params)

    if @profile.save
      render json: {
        profile: @profile
      }
    else
      render json: {
        status: 500,
        errors: @profile.errors.full_messages
      }
    end
  end

  def profile_params
    params.require(:profile).permit(:photo)
  end

end
