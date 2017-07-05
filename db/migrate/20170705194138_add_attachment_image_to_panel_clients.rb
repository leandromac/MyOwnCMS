class AddAttachmentImageToPanelClients < ActiveRecord::Migration
  def self.up
    change_table :panel_clients do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :panel_clients, :image
  end
end
