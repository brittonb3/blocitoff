class ItemsController < ApplicationController
    def create
      @item = Item.new
      @item.name = params[:name]
      @user = User.find(current_user)
      @item.user = @user

      if @item.save
        flash[:notice] = "Item was saved successfully."
        redirect_to user_path(current_user)
      else
        flash.now[:alert] = "There was an error saving the item. Please try again."
        render :create
      end
    end
  end
