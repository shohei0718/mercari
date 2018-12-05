class PaymentInformationsController < ApplicationController

  def index
  end

  def new
    @payment_information = PaymentInformation.new

  end

  def create
    # binding.pry
    @payment_information = PaymentInformation.create(payment_information_params)

    redirect_to :back

    # あとで入れる,(card_number: payment_information_params[:card_number], valid_year: payment_information_params[:valid_year],valid_month: payment_information_params[:valid_month],cvc: payment_information_params[:cvc],user_id: current_user.id)

  end

  def edit
  end

  def update
  end

  private

  def payment_information_params
    params.permit(:card_number, :valid_year, :valid_month, :cvc)

  end

end
