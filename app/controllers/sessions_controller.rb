class SessionsController < Devise::SessionsController
  def create
    if verify_recaptcha
      super
    else
      self.resource = resource_class.new
      respond_with_navigational(resource) { render :new }
    end
  end
end
