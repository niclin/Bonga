class LeaveEventsController < BaseController
  before_action :authenticate_user!

  load_and_authorize_resource

  def index
    @leave_events = LeaveEvent.where(sign_date: nil)
  end

  def create
    @leave_event = current_user.leave_events.build(leave_event_params)

    if @leave_event.save
      redirect_to leave_event_path(@leave_event)
    else
      render :new
    end
  end

  def verify

  end

  private

  def leave_event_params
    params.require(:leave_event).permit(
      :start_date, :end_date, :hours, :leave_type, :description
    )
  end
end
