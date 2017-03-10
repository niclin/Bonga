class ChangeDateFormatInLeaveEvents < ActiveRecord::Migration[5.0]
  def change
    change_column :leave_events, :start_date, :datetime
    change_column :leave_events, :end_date, :datetime
  end
end
