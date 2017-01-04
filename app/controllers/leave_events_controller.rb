class LeaveEventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @leave_events = LeaveEvent.where(sign_date: nil)
  end

  def new
    @leave_event = current_user.leave_events.build
  end

  def create
    @leave_event = current_user.leave_events.build(leave_event_params)

    if @leave_event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @leave_event = LeaveEvent.find(params[:id])
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
