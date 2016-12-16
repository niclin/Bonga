class AddRemainingLeavesToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :remaining_leaves, :integer
  end
end
