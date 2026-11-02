class CreateLogindetails < ActiveRecord::Migration[8.1]
  def change
    create_table :logindetails do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
