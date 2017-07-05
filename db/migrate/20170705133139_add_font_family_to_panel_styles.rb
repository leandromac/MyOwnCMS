class AddFontFamilyToPanelStyles < ActiveRecord::Migration
  def change
    add_column :panel_styles, :font_family, :string
  end
end
