class CreateUupdatehasemails < ActiveRecord::Migration[8.1]
  def change
    create_table :uupdatehasemails do |t|
      t.references :email, null: false, foreign_key: true
      t.references :uupdate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
