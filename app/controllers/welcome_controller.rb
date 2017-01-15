class WelcomeController < ApplicationController
  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end

  def index
    @pending_events = current_user.leave_events.where(status: "pending")
    @completed_events = current_user.leave_events.completed
  end
end
