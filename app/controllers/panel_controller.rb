class PanelController < ApplicationController
  before_action :authenticate_user!
  layout 'panel'
  def home
    @panel_services = Panel::Service.all
  end
end
