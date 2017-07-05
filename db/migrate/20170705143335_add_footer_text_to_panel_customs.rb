class AddFooterTextToPanelCustoms < ActiveRecord::Migration
  def change
    add_column :panel_customs, :footer_text, :text
  end
end
