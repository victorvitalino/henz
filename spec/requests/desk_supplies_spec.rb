require 'rails_helper'

RSpec.describe "DeskSupplies", type: :request do
  describe "GET /desk_supplies" do
    it "works! (now write some real specs)" do
      get desk_supplies_path
      expect(response).to have_http_status(200)
    end
  end
end
