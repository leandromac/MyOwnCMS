class AddFontLinkToPanelStyles < ActiveRecord::Migration
  def change
    add_column :panel_styles, :font_link, :string
  end
end
