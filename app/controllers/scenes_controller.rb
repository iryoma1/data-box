class ScenesController < ApplicationController
  def index
  end

  def new
    # binding.pry
    # @user = User.find(params[:user_id])
    @scene = Scene.new
  end

  def create
    @scene = Scene.new(scene_params)
    if @scene.save
      redirect_to root_path
    else
      render :new
    end
  end
  def show
    @scene = Scene.find(params[:id])
  end

  private
  def scene_params
    params.require(:scene).permit(:name, :user_name, :comment, image: []).merge(user_id: current_user.id)
  end
end
