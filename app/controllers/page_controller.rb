class PageController < ApplicationController

  layout 'site'

  def home
    @panel_customs = Panel::Custom.all
  end

  def about
  end

  def service
  end

  def contact
  end
end
