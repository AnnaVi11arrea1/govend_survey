class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = current_user(params[:name])
    else
      render :new
    end
  end


end
