class CreateFriendrequests < ActiveRecord::Migration[8.1]
  def change
    create_table :friendrequests do |t|
      t.references :employee, null: false, foreign_key: true
      t.integer :friend_id

      t.timestamps
    end
  end
end
