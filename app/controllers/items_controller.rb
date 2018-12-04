class ItemsController < ApplicationController
  def index
    @items = Item.includes(:item_images).page(params[:page]).per(5).order("created_at DESC")
  end
  def show
  end

  def new
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

