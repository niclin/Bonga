class LeaveEventsController < ApplicationController
  before_action :authenticate_user!

  def new
    @leave_event = current_user.leave_events.build
  end

  def create
    @leave_event = current_user.leave_events.build(leave_event_params)
    @leave_event.save

    redirect_to root_path
  end

  private

  def leave_event_params
    params.require(:leave_event).permit(
      :start_date, :end_date, :hours, :leave_type
    )
  end

end
