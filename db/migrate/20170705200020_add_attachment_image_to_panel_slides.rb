class AddAttachmentImageToPanelSlides < ActiveRecord::Migration
  def self.up
    change_table :panel_slides do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :panel_slides, :image
  end
end
