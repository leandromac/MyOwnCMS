class AddAttachmentLogoToPanelCustoms < ActiveRecord::Migration
  def self.up
    change_table :panel_customs do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :panel_customs, :logo
  end
end
