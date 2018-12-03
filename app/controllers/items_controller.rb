class ItemsController < ApplicationController
  def index
    @items = Item.includes(:item_images).all
  end
end
