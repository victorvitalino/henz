require 'rails_helper'

RSpec.describe "VehicleConsumptions", type: :request do
  describe "GET /vehicle_consumptions" do
    it "works! (now write some real specs)" do
      get vehicle_consumptions_path
      expect(response).to have_http_status(200)
    end
  end
end
