class UserController < ApplicationController
  def search
    @search_users = User.search(params[:keyword])
  end

  def index
    @scene = Scene.all
    @user = User.find_by(id: params[:format])
  end
end