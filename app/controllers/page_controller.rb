class PageController < ApplicationController
  before_action :panel_customs, only: [:home, :about, :service, :contact]

  layout 'site'

  def home
    @panel_customs = Panel::Custom.all
  end

  def about
    @panel_abouts = Panel::About.all
  end

  def service
    @panel_services = Panel::Service.all
  end

  def contact
  end

  def panel_customs
    @panel_customs = Panel::Custom.all
  end


end
