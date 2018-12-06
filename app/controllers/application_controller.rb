class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:first_name,:first_name_kana,:last_name,:last_name_kana,:prefecture_id,:city,:address,:building,:zip_code,:telephone,:birth_year,:birth_month,:birth_day])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'mercari' && password == '2018'
    end
  end
end
