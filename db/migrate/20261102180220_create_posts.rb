class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.references :employee, null: false, foreign_key: true
      t.text :content
      t.string :pic

      t.timestamps
    end
  end
end
