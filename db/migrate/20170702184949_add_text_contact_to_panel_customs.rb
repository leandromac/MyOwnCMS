class AddTextContactToPanelCustoms < ActiveRecord::Migration
  def change
    add_column :panel_customs, :text_contact, :text
  end
end
