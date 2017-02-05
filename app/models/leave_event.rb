class LeaveEvent < ApplicationRecord
  belongs_to :user
  before_create :generate_token

  validates_presence_of :start_date, :end_date, :leave_type, :hours, :description

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
end
