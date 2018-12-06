class ItemsController < ApplicationController

  def index
    @items = Item.includes(:item_images).limit(4).order("created_at DESC")
    @item_images =ItemImage.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

