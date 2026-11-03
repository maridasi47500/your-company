class CreateUupdates < ActiveRecord::Migration[8.1]
  def change
    create_table :uupdates do |t|
      t.datetime :schedule_restart

      t.timestamps
    end
  end
end
