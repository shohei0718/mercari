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
    render action: 'complete'
  end
  # def after_sign_up_path_for(resource)
  #   destroy_user_session
  # end

  # def after_inactive_sign_up_path_for(resource)
  #   destroy_user_session
  # end
end
