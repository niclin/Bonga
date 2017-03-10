class ChangeDateFormatInLeaveEvents < ActiveRecord::Migration[5.0]
  def change
    change_column :leave_events, :start_time, :datetime
    change_column :leave_events, :end_time, :datetime
  end
end
