require 'rails_helper'

RSpec.describe "Benefits", type: :request do
  describe "GET /benefits" do
    it "works! (now write some real specs)" do
      get benefits_path
      expect(response).to have_http_status(200)
    end
  end
end
