require 'rails_helper'

RSpec.describe "Footholds", type: :request do
  describe "GET /footholds" do
    it "works! (now write some real specs)" do
      get footholds_path
      expect(response).to have_http_status(200)
    end
  end
end
