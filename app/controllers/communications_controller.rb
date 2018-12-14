class CommunicationsController < ApplicationController
  def create
    @message = Communication.create(create_params)
    redirect_to "/items/#{@message.item.id}"

  end
  private
  def create_params
    params.require(:communication).permit(:message,:seller_or_buyer,:user_id,:order_status_id).merge(item_id: params[:item_id])

  end
end
