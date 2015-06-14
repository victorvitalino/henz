require 'rails_helper'

RSpec.describe "vehicle_consumptions/edit", type: :view do
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

  it "renders the edit vehicle_consumption form" do
    render

    assert_select "form[action=?][method=?]", vehicle_consumption_path(@vehicle_consumption), "post" do

      assert_select "input#vehicle_consumption_vehicle_id[name=?]", "vehicle_consumption[vehicle_id]"

      assert_select "input#vehicle_consumption_km_start[name=?]", "vehicle_consumption[km_start]"

      assert_select "input#vehicle_consumption_km_end[name=?]", "vehicle_consumption[km_end]"

      assert_select "input#vehicle_consumption_gas_liter[name=?]", "vehicle_consumption[gas_liter]"

      assert_select "input#vehicle_consumption_value_liter[name=?]", "vehicle_consumption[value_liter]"

      assert_select "textarea#vehicle_consumption_number_notes[name=?]", "vehicle_consumption[number_notes]"

      assert_select "textarea#vehicle_consumption_observation[name=?]", "vehicle_consumption[observation]"

      assert_select "input#vehicle_consumption_desk_supplie_id[name=?]", "vehicle_consumption[desk_supplie_id]"

      assert_select "input#vehicle_consumption_driver_id[name=?]", "vehicle_consumption[driver_id]"
    end
  end
end
