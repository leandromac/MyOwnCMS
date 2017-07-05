module Panel::ServicesHelper
  def services_count
    if @panel_services.count == 0
      "No service registred"
    elsif @panel_services.count < 2
      "#{@panel_services.count} service registred"
    else
      "#{@panel_services.count} services registred"
    end
  end
end
