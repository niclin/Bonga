require "rails_helper"

RSpec.describe "Welcome" do
  it "route root path to Welcome # index" do
    expect(get: "/").to route_to(controller: "welcome", action: "index")
  end
end
