class PaymentInformationsController < ApplicationController

  def index
    @payment_informations = PaymentInformation.includes(:user)
  end

  def new
    @payment_information = PaymentInformation.new

  end

  def create
    # binding.pry
    @payment_information = PaymentInformation.create(payment_information_params)

    if @payment_information.save
      redirect_to action: :index
    else
      render :new
    end

  end

  def destroy
    # binding.pry
    @user = User.find(params[:user_id])
    PaymentInformation.find(params[:id]).destroy if @user == current_user

    redirect_to action: :index

  end

  def edit
  end

  def update
  end

  private

  def payment_information_params
    params.require(:payment_information).permit(:card_number, :valid_year, :valid_month, :cvc).merge(user_id:current_user.id)

  end

end
