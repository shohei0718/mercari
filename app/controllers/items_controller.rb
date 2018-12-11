class ItemsController < ApplicationController

  before_action :authenticate_user!, except: [:index,:show]

  def index
    @items = Item.includes(:item_images).limit(4).order("created_at DESC")
    @item_images =ItemImage.all
  end

  def show
    @item = Item.find(params[:id])
    @item_images = @item.item_images(@item.id)
  end

  def new
    @item = current_user.items.new
    4.times {@item.item_images.build}
    @first = FirstCategory.all
    @second = SecondCategory.all
  end
  def create
    @item = current_user.items.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new, item_images: @item.item_images.build
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def secondcategory
    @secondcategory = SecondCategory.where(first_category_id: params[:item][:first_category_id])
  end
  def thirdcategory
    @thirdcategory = ThirdCategory.where(second_category_id: params[:item][:second_category_id])
  end

    Payjp::api_key ='sk_test_c5be69e2d1ccf9815f894a2d'

    def self.create_token(number, cvc, exp_year, exp_month)
    token = Payjp::Token.create(
        card: {
          number:    number,
          cvc:       cvc,
          exp_year:  exp_year,
          exp_month: exp_month,
        }
      )
      return token.id
    end

  def pay
    @item = Item.find(id: 1)

    Payjp.api_key = 'sk_test_c5be69e2d1ccf9815f894a2d'

    charge = Payjp::Charge.create(
      amount: "#{@item.price}",
      card: params['payjp-token'],
      currency: 'jpy',
    )
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

