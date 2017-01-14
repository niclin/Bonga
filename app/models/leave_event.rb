class LeaveEvent < ApplicationRecord
  belongs_to :user

  validates_presence_of :start_date, :end_date, :leave_type, :hours, :description

  BASIC_TYPES = %i(annual bonus personal sick).freeze
  STATUS = %i(pending approved rejected canceled).freeze

  def verify(manager)
    return false if manager.nil?
    self.update_columns(manager_id: manager.id, status: "approved")
  end
end
