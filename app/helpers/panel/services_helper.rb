module Panel::ServicesHelper
  def services_count
    @panel_services.count < 2 ?
    "#{@panel_services.count} service registred" :
    "#{@panel_services.count} services registred"
  end
end
