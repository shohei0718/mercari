class ItemsController < ApplicationController
  def index
  end
  def show
  end

  def new
    if user_signed_in?
      @item = current_user.items.new
      @item.item_images.build
    else
      redirect_to new_user_session_path
    end
  end

  def create
    if user_signed_in?
      @item = current_user.items.new(item_params)
      if @item.save
        redirect_to root_path
      else
        render :new, item_images: @item.item_images.build
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(
      :name, :price, :description, :first_category_id,
      :second_category_id, :third_category_id, :brand_id,
      :size_id, :condition_id, :delivery_charge_id, :prefecture_id,
      :delivery_date_id, :order_status_id, :delivery_way_id, item_images_attributes:[:id, :image])
  end

end

