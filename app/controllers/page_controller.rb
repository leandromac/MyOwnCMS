class PageController < ApplicationController
  before_action :site_home, only: [:home, :about, :service, :contact]

  layout 'site'

  def home

  end

  def about
    @panel_abouts = Panel::About.all
  end

  def service
  end

  def contact
  end

  def site_home
    @panel_customs = Panel::Custom.all
    @panel_services = Panel::Service.all
    @panel_styles = Panel::Style.all
    @panel_slides = Panel::Slide.all
  end

end
