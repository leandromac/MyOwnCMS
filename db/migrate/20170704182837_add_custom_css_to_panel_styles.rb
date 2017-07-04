class AddCustomCssToPanelStyles < ActiveRecord::Migration
  def change
    add_column :panel_styles, :custom_css, :text
  end
end
