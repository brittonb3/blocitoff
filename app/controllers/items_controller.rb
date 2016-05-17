class ItemsController < ApplicationController
    def create
      @item = Item.new(items_param)
      @item.user = current_user


      if @item.save
        flash[:notice] = "Item was saved successfully."
<<<<<<< HEAD
        redirect_to current_user
      else
        flash.now[:alert] = "There was an error saving the item. Please try again."
        redirect_to current_user
      end
    end

    def destroy
      @user = User.find(current_user)
      @item = Item.find(params[:id])
      @item.destroy

      respond_to do |format|
        format.html do
          if @item.destroyed?
            flash[:notice] = "Item was deleted successfully."
          else
            flash[:alert] = "Item couldn't be deleted. Please try again."
          end
        end
        format.js
=======
        redirect_to root_path
      else
        flash.now[:alert] = "There was an error saving the item. Please try again."
        redirect_to root_path
>>>>>>> create-items
      end
    end

    private

    def items_param
      params.require(:item).permit(:name)
    end
  end
