class AddSalaryToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :salary, :integer
  end
end
