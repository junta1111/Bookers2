class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to user_path(current_user)
    end
  end
  
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @book = Book.new
    if @user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user)
    else
      @users = User.all
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
