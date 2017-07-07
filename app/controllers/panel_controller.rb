class PanelController < ApplicationController
  before_action :authenticate_user!

  layout 'panel'

  def home
    @panel_services = Panel::Service.all
    @panel_clients = Panel::Client.all
    @panel_slides = Panel::Slide.all
    @panel_customs = Panel::Custom.all

    @panel_slides_groups = Panel::Slide.all.collect{|c| [c.image]}.count
  end
end
