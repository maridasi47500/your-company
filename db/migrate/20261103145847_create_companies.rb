class CreateCompanies < ActiveRecord::Migration[8.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :established
      t.string :pic
      t.string :description

      t.timestamps
    end
  end
end
