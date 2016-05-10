class UsersController < ApplicationController
  def show
    @user = User.find(current_user)
    @item = @user.items.all
  end
end
