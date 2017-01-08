require "rails_helper"

RSpec.describe LeaveEvent do
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:end_date) }
  it { is_expected.to validate_presence_of(:hours) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:leave_type) }
end
