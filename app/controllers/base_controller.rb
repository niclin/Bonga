class BaseController < ApplicationController
  helper_method :resource_name, :resource_class, :resource_instance, :collection_instance

  before_action :authenticate_user!

  load_and_authorize_resource

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end

  private

  def resource_name
    @resource_name ||= controller_name.singularize.downcase.to_sym
  end

  def resource_class
    resource_instance.class
  end

  def collection_instance_name
    @collection_instance_name ||= "@#{controller_name.downcase}".to_sym
  end

  def resource_instance
    instance_variable_get("@#{resource_name}".to_sym)
  end

  def resource_instance=(instance)
    instance_variable_set("@#{resource_name}".to_sym, instance)
  end

  def collection_instance
    instance_variable_get(collection_instance_name)
  end

  def collection_instance=(instance)
    instance_variable_set(collection_instance_name, instance)
  end
end
