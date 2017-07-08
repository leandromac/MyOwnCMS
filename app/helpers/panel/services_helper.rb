module Panel::ServicesHelper
  def services_count
    if @panel_services.count == 0
      "#{t('panel.services.count_blank')} "
    elsif @panel_services.count < 2
      "#{@panel_services.count} #{t('panel.services.count_singular')} "
    else
      "#{@panel_services.count} #{t('panel.services.count_plural')} "
    end
  end
end
