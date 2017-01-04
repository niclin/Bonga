class LeaveEvent < ApplicationRecord
  belongs_to :user

  validates_presence_of :start_date, :end_date, :leave_type, :hours, :description

  BASIC_TYPES = %i(annual bonus personal sick).freeze
end
