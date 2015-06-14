require 'rails_helper'

RSpec.describe "VehicleTypes", type: :request do
  describe "GET /vehicle_types" do
    it "works! (now write some real specs)" do
      get vehicle_types_path
      expect(response).to have_http_status(200)
    end
  end
end
