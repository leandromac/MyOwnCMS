module Panel::ClientsHelper
  def clients_count
    if @panel_clients.count == 0
      "No client registred"
    elsif @panel_clients.count < 2
      "#{@panel_clients.count} client registred"
    else
      "#{@panel_clients.count} clients registred"
    end
  end
end
