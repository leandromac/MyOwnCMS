class AddAttachmentFaviconToPanelCustoms < ActiveRecord::Migration
  def self.up
    change_table :panel_customs do |t|
      t.attachment :favicon
    end
  end

  def self.down
    remove_attachment :panel_customs, :favicon
  end
end
