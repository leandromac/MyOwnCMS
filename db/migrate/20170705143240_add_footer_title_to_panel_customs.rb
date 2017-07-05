class AddFooterTitleToPanelCustoms < ActiveRecord::Migration
  def change
    add_column :panel_customs, :footer_title, :string
  end
end
