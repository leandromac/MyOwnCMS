class CreatePanelStyles < ActiveRecord::Migration
  def change
    create_table :panel_styles do |t|
      t.string :nav_color
      t.string :footer_color
      t.string :a_color
      t.string :a_hover_color
      t.string :menu_color
      t.string :menu_hover_color
      t.string :nav_text_color
      t.string :footer_text_color

      t.timestamps null: false
    end
  end
end
