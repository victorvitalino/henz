require 'rails_helper'

RSpec.describe "vehicles/edit", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :name => "MyString",
      :description => "MyText",
      :patrimony => "MyString",
      :status_vehicle => 1,
      :vehicle_plate => "MyString",
      :vehicle_type => nil,
      :vehicle_service => nil,
      :provider => nil
    ))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input#vehicle_name[name=?]", "vehicle[name]"

      assert_select "textarea#vehicle_description[name=?]", "vehicle[description]"

      assert_select "input#vehicle_patrimony[name=?]", "vehicle[patrimony]"

      assert_select "input#vehicle_status_vehicle[name=?]", "vehicle[status_vehicle]"

      assert_select "input#vehicle_vehicle_plate[name=?]", "vehicle[vehicle_plate]"

      assert_select "input#vehicle_vehicle_type_id[name=?]", "vehicle[vehicle_type_id]"

      assert_select "input#vehicle_vehicle_service_id[name=?]", "vehicle[vehicle_service_id]"

      assert_select "input#vehicle_provider_id[name=?]", "vehicle[provider_id]"
    end
  end
end
