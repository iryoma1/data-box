class CompanyController < ApplicationController

  def index
  end

  def new
  end

  def show
    @user = User.all
  end



end
