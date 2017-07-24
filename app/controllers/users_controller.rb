class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = 'Account successfully created.'
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:alert] = "There was an error in creating your account. Please check that your password has a length between 6-12 characters and includes one number."
      redirect_to '/sign_up'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
