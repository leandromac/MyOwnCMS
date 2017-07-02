class CreatePanelAbouts < ActiveRecord::Migration
  def change
    create_table :panel_abouts do |t|
      t.string :image
      t.string :title
      t.text :about
      t.text :blockquote

      t.timestamps null: false
    end
  end
end
