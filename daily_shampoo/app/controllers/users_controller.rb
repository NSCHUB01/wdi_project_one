class UsersController < ApplicationController



  def index
    @user = User.all
  end

  def new
    @user = User.new
    render :new
  end


  def create
    @user = User.create(user_params)

  end

  def show
    @user = User.find(params[:id])

  end


  private

  def post_params
    params.require(:user).permit(:name)

  end

end
