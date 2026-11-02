class AddIscybertoToEmployees < ActiveRecord::Migration[8.1]
  def change
    add_column :employees, :iscyberto, :boolean
  end
end
