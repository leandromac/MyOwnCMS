class AddAttachmentImageToPanelServices < ActiveRecord::Migration
  def self.up
    change_table :panel_services do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :panel_services, :image
  end
end
