class ItemsController < ApplicationController
    def create
      @item = Item.new(items_param)
      @item.user = current_user


      if @item.save
        flash[:notice] = "Item was saved successfully."
      else
        flash.now[:alert] = "There was an error saving the item. Please try again."
      end
      redirect_to current_user
    end

    private

    def items_param
      params.require(:item).permit(:name)
    end
  end
