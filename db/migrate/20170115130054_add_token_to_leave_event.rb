class AddTokenToLeaveEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :leave_events, :token, :string
    add_index :leave_events, :token
  end
end
