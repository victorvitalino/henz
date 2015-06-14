require 'rails_helper'

RSpec.describe "vehicle_consumptions/index", type: :view do
  before(:each) do
    assign(:vehicle_consumptions, [
      VehicleConsumption.create!(
        :vehicle => nil,
        :km_start => 1.5,
        :km_end => 1.5,
        :gas_liter => 1.5,
        :value_liter => 1.5,
        :number_notes => "MyText",
        :observation => "MyText",
        :desk_supplie => nil,
        :driver => nil
      ),
      VehicleConsumption.create!(
        :vehicle => nil,
        :km_start => 1.5,
        :km_end => 1.5,
        :gas_liter => 1.5,
        :value_liter => 1.5,
        :number_notes => "MyText",
        :observation => "MyText",
        :desk_supplie => nil,
        :driver => nil
      )
    ])
  end

  it "renders a list of vehicle_consumptions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
