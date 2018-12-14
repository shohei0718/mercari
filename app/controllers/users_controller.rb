class UsersController < ApplicationController
  before_action :move_to_index

  def index
  end

  def show
  end

  def edit
  end

  def user_info
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      redirect_to user_path(current_user.id)
    end
  end

  def user_exhibitation_products
    @items = Item.where(user_id: current_user.id)
  end

  def user_item_show
    @item = Item.find(params[:id])
    @item_images = @item.item_images(@item.id)
  end

  def delete
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?

  end

  private
  def user_params
    params.require(:user).permit(
      :nickname, :first_name, :first_name_kana, :last_name, :last_name_kana, :city, :address, :building, :email, :encrypted_password, :reset_password_token, :telephone, :zip_code, :birth_year, :birth_month, :birth_day, :point_amount, :profit_amount, :user_icon, :introduction, :remember_created_at, :reset_password_sent_at, :created_at, :updated_at, :prefecture_id)
  end
end
