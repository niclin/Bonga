class CreateLeaveEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :leave_events do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_days
      t.text :reason_for_leave
      t.integer :user_id
      t.integer :manager_id
      t.string :status
      t.text :reason_for_rejection

      t.timestamps
    end
  end
end
