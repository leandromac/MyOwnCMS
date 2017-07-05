module ApplicationHelper
  def active_page
    params[:action]
  end
  def active_panel
    params[:controller].to_s
  end
end
