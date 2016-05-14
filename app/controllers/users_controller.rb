class UsersController < ApplicationController
  def show
    @user = User.find(current_user)
    if @user == current_user
      @item = Item.new
    end
  end
end
