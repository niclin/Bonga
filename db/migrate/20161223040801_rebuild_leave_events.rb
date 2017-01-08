class RebuildLeaveEvents < ActiveRecord::Migration[5.0]
  def change
  	remove_column :leave_events, :reason_for_rejection, :text
  	remove_column :leave_events, :total_days, :date
  	remove_column :leave_events, :reason_for_leave, :text
  	add_column :leave_events, :description, :text
  	add_column :leave_events, :hours, :decimal
  	add_column :leave_events, :sign_date, :date
    add_column :leave_events, :leave_type, :string, default: "panding..."
    add_column :leave_events, :manager_id, :integer
  end
end
