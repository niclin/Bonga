require 'rails_helper'

RSpec.describe LeaveEventsController, type: :controller do
  describe "GET index" do
    it "assigns @leave_events and render template when current user is admin" do

      user = create(:user)
      sign_in user

      le1 = create(:leave_event)
      le2 = create(:leave_event)

      get :index

      expect(assigns[:leave_events]).to eq([le1, le2])
      expect(response).to render_template("index")
    end
  end
end
