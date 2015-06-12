require 'rails_helper'

RSpec.describe "vehicle_services/show", type: :view do
  before(:each) do
    @vehicle_service = assign(:vehicle_service, VehicleService.create!(
      :name => "Name",
      :description => "MyText",
      :observation => "MyText",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
