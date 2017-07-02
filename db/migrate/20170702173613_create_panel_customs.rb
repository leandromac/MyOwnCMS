class CreatePanelCustoms < ActiveRecord::Migration
  def change
    create_table :panel_customs do |t|
      t.string :name
      t.string :logo
      t.string :phone
      t.string :email
      t.string :address
      t.text :about
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :youtube
      t.string :linkedin

      t.timestamps null: false
    end
  end
end
