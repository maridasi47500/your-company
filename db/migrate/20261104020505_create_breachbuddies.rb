class CreateBreachbuddies < ActiveRecord::Migration[8.1]
  def change
    create_table :breachbuddies do |t|
      t.string :device_type
      t.string :name_associated
      t.string :serial_number
      t.string :location

      t.timestamps
    end
  end
end
