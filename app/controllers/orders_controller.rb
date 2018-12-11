class OrdersController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @item_images = @item.item_images(@item.id)
    @delivery_way = @item.delivery_way(@item.id)
    @user = current_user
  end

  def create

  end

end
