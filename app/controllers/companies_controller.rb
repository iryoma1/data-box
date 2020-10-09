class CompaniesController < ApplicationController
  def index
  end

  def new
  end

  def show
    @user = User.all
    @scene = Scene.all
  end
end
