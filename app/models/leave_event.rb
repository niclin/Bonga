class LeaveEvent < ApplicationRecord
  belongs_to :user

  BASIC_TYPES = %i(annual bonus personal sick).freeze
end
