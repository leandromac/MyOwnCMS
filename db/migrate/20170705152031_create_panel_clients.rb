class CreatePanelClients < ActiveRecord::Migration
  def change
    create_table :panel_clients do |t|
      t.string :image
      t.string :link

      t.timestamps null: false
    end
  end
end
