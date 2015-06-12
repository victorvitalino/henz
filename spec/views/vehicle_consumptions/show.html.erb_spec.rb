require 'rails_helper'

RSpec.describe "vehicle_consumptions/show", type: :view do
  before(:each) do
    @vehicle_consumption = assign(:vehicle_consumption, VehicleConsumption.create!(
      :vehicle => nil,
      :km_start => 1.5,
      :km_end => 1.5,
      :gas_liter => 1.5,
      :value_liter => 1.5,
      :number_notes => "MyText",
      :observation => "MyText",
      :desk_supplie => nil,
      :driver => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
