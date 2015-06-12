require 'rails_helper'

RSpec.describe "VehicleServices", type: :request do
  describe "GET /vehicle_services" do
    it "works! (now write some real specs)" do
      get vehicle_services_path
      expect(response).to have_http_status(200)
    end
  end
end
