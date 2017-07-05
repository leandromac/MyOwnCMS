class AddAttachmentImageToPanelAbouts < ActiveRecord::Migration
  def self.up
    change_table :panel_abouts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :panel_abouts, :image
  end
end
