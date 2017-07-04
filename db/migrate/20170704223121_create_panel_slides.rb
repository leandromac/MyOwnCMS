class CreatePanelSlides < ActiveRecord::Migration
  def change
    create_table :panel_slides do |t|
      t.string :link
      t.string :image
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
