class LeaveEventsController < BaseController
  skip_load_resource :except => [:create, :new]

  def index
    @leave_events = LeaveEvent.where(sign_date: nil)
  end

  def create
    @leave_event = current_user.leave_events.build(leave_event_params)

    if @leave_event.save
      redirect_to leave_events_path, notice: "假單送出成功"
    else
      render :new
    end
  end

  def show
    @leave_event = LeaveEvent.find_by_token(params[:id])
  end

  def verify
    obj = LeaveEvent.find_by_token(params[:id])

    if obj.verify(current_user)
      redirect_to leave_events_path, notice: "審核成功"
    else
      redirect_to leave_events_path, alert: "審核失敗"
    end
  end

  def reject
    obj = LeaveEvent.find_by_token(params[:id])

    if obj.reject(current_user)
      redirect_to leave_events_path, notice: "駁回成功"
    else
      redirect_to leave_events_path, alert: "駁回失敗"
    end
  end

  private

  def leave_event_params
    params.require(:leave_event).permit(
      :start_time, :end_time, :leave_type, :description
    )
  end
end
