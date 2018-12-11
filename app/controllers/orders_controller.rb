class OrdersController < ApplicationController

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
      binding.pry
    end


  def pay

    Payjp.api_key = 'sk_test_c5be69e2d1ccf9815f894a2d'

    charge = Payjp::Charge.create(
      amount: 3000,
      card: params['payjp-token'],
      currency: 'jpy',
    )

  end

  def show
    @item            = Item.find(params[:id])
    @item_images     = @item.item_images(@item.id)
    @delivery_charge = @item.delivery_charge(@item.id)
    @user            = current_user

  end

  def create
    @order = current_user.orders.new(order_params)
    if @order.save
      redirect_to root_path
    else
      render :new
    end
    # binding.pry
  end

  private

  def order_params
    params.permit(:content, :image).merge(user_id: current_user.id)
  end
end
