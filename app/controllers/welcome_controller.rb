class WelcomeController < ApplicationController

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end

  def index	
  end
end
