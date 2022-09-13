class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def contact
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Usuario creado con éxito"
      redirect_to @user
    else
      flash[:error] = "No se pudo crear el usuario"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :comments)
  end
end
