json.extract! panel_custom, :id, :name, :logo, :phone, :email, :address, :about, :facebook, :twitter, :instagram, :youtube, :linkedin, :created_at, :updated_at
json.url panel_custom_url(panel_custom, format: :json)
