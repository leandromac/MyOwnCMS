class CreatePanelServices < ActiveRecord::Migration
  def change
    create_table :panel_services do |t|
      t.string :image
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
