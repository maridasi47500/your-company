class CreateCompanymessages < ActiveRecord::Migration[8.1]
  def change
    create_table :companymessages do |t|
      t.references :company, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.string :content
      t.string :pic

      t.timestamps
    end
  end
end
