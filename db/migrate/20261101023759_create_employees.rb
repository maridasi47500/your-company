class CreateEmployees < ActiveRecord::Migration[8.1]
  def change
    create_table :employees do |t|
      t.string :fullname
      t.string :email
      t.string :password
      t.string :pic
      t.string :dob
      t.string :company
      t.string :city
      t.string :gender
      t.string :description

      t.timestamps
    end
  end
end
