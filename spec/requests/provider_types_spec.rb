require 'rails_helper'

RSpec.describe "ProviderTypes", type: :request do
  describe "GET /provider_types" do
    it "works! (now write some real specs)" do
      get provider_types_path
      expect(response).to have_http_status(200)
    end
  end
end
