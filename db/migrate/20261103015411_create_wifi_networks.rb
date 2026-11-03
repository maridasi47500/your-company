class CreateWifiNetworks < ActiveRecord::Migration[8.1]
  def change
    create_table :wifi_networks do |t|
      t.string :ssid
      t.string :password
      t.boolean :firmware_updates

      t.timestamps
    end
  end
end
