module ApplicationHelper
  def active controller_name, action_name
    'active' if params[:controller] == controller_name && params[:action] == action_name
  end
end
