class Users::RegistrationsController < Devise::RegistrationsController
 before_action :create, only: [:complete]

  def confirm
    @user = User.new(sign_up_params)
    @year = [*(1900..2018)]
    @month = [*(1..12)]
    @day = [*(1..31)]
    if @user.valid?
      render action: 'confirm'
    else
     render action: 'new'
    end

  end

  def complete
  end
  def after_sign_up_path_for(resource)
    users_path
  end

  def after_inactive_sign_up_path_for(resource)
    users_path
  end

  def post_params
  params.require(:user).permit(:telephone)
  end
end
