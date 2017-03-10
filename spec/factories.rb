FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "password"
    password_confirmation { password }
    role "admin"
  end

  factory :leave_event do
    start_time Time.zone.today
    end_time Time.zone.today
    hours "0"
    description "reason"
  end
end
