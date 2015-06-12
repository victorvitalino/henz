require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :name => "Name",
      :description => "MyText",
      :patrimony => "Patrimony",
      :status_vehicle => 1,
      :vehicle_plate => "Vehicle Plate",
      :vehicle_type => nil,
      :vehicle_service => nil,
      :provider => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Patrimony/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Vehicle Plate/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
