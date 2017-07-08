module Panel::ClientsHelper
  def clients_count
    if @panel_clients.count == 0
      "#{t('panel.clients.count_blank')}"
    elsif @panel_clients.count < 2
      "#{@panel_clients.count} #{t('panel.clients.count_plural')}"
    else
      "#{@panel_clients.count} #{t('panel.clients.count_singular')}"
    end
  end
end
