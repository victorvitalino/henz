require 'rails_helper'

RSpec.describe "vehicle_types/show", type: :view do
  before(:each) do
    @vehicle_type = assign(:vehicle_type, VehicleType.create!(
      :name => "Name",
      :description => "MyText",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
