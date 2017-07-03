class PanelController < ApplicationController
  before_action :authenticate_user!
  layout 'panel'
  def home
  end
end
