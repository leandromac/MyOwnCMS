class AddFaviconToPanelCustoms < ActiveRecord::Migration
  def change
    add_column :panel_customs, :favicon, :string
  end
end
