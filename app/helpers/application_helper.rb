module ApplicationHelper
  def current_user
   current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def nav_link(link_text, link_path, controller = '')
    class_name = ''
    if controller.blank?
      class_name = current_page?(link_path) ? 'active' : ''
    else
      class_name = (params[:controller] == controller) ? 'active' : ''
    end
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end
  
  def row_clickable
    return "location.href = this.getElementsByTagName('a').item(0).getAttribute('href');"
  end
  
end
