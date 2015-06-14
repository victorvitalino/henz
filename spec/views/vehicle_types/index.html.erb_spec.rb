require 'rails_helper'

RSpec.describe "vehicle_types/index", type: :view do
  before(:each) do
    assign(:vehicle_types, [
      VehicleType.create!(
        :name => "Name",
        :description => "MyText",
        :status => false
      ),
      VehicleType.create!(
        :name => "Name",
        :description => "MyText",
        :status => false
      )
    ])
  end

  it "renders a list of vehicle_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
