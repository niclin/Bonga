class LeaveEvent < ApplicationRecord
  belongs_to :user
  before_create :generate_token
  after_save :calculate_hours

  validates_presence_of :start_time, :end_time, :leave_type, :description

  BASIC_TYPES = %i(annual bonus personal sick).freeze
  STATUS = %i(pending approved rejected canceled).freeze

  scope :completed, -> { where.not(status: "pending")}

  def verify(manager)
    return false if manager.nil? && !can_verify?

    self.update_columns(manager_id: manager.id, status: "approved", sign_date: Time.zone.now)
  end

  def reject(manager)
    return false if manager.nil? && !can_verify?

    self.update_columns(manager_id: manager.id, status: "rejected", sign_date: Time.zone.now)
  end

  def can_verify?
    status == "pending"
  end

  def generate_token
    self.token = SecureRandom.hex(5).upcase
  end

  def calculate_hours
    self.update_columns(hours: ((end_time - start_time) / 1.hour).round)
  end
end
