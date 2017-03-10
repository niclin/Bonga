class ReanmeColumnLeaveEventDateToTime < ActiveRecord::Migration[5.0]
  def change
    rename_column :leave_events, :start_date, :start_time
    rename_column :leave_events, :end_date, :end_time
  end
end
