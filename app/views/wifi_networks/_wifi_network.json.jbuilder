json.extract! wifi_network, :id, :ssid, :password, :firmware_updates, :created_at, :updated_at
json.url wifi_network_url(wifi_network, format: :json)
