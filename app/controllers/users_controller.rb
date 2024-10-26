class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = current_user(params[:name])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'User created successfully'
    else
      render :new
    end
  end


end
