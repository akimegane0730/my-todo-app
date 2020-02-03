class UsersController < ApplicationController

  def edit
    @user = User.find(paramd[:id])
  end

  def update
    @user = User.find(paramd[:id])
    if @user.update_attributes(user_params)
      redirect_to :root
    else
      render action: :edit
    end
  end


  private
    def user_params
      params.require(:user).permit(:name).merge(user: current_user)
    end
end
