require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :name => "Name",
        :description => "MyText",
        :patrimony => "Patrimony",
        :status_vehicle => 1,
        :vehicle_plate => "Vehicle Plate",
        :vehicle_type => nil,
        :vehicle_service => nil,
        :provider => nil
      ),
      Vehicle.create!(
        :name => "Name",
        :description => "MyText",
        :patrimony => "Patrimony",
        :status_vehicle => 1,
        :vehicle_plate => "Vehicle Plate",
        :vehicle_type => nil,
        :vehicle_service => nil,
        :provider => nil
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Patrimony".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Vehicle Plate".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
