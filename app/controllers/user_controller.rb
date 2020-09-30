class UserController < ApplicationController
  def search
      @search_users = User.search(params[:keyword])
  end
end
