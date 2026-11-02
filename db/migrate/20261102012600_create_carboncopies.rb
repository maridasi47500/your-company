class CreateCarboncopies < ActiveRecord::Migration[8.1]
  def change
    create_table :carboncopies do |t|
      t.references :email, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
