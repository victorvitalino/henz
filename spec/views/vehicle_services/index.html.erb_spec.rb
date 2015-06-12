require 'rails_helper'

RSpec.describe "vehicle_services/index", type: :view do
  before(:each) do
    assign(:vehicle_services, [
      VehicleService.create!(
        :name => "Name",
        :description => "MyText",
        :observation => "MyText",
        :status => false
      ),
      VehicleService.create!(
        :name => "Name",
        :description => "MyText",
        :observation => "MyText",
        :status => false
      )
    ])
  end

  it "renders a list of vehicle_services" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
