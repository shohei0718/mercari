class CategorysController < ApplicationController
  def index
    @items = Item.includes(:item_images).page(params[:page]).per(80).order("created_at DESC")
    @item_images =ItemImage.all
  end
end
