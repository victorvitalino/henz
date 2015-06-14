require 'rails_helper'

RSpec.describe "vehicle_services/new", type: :view do
  before(:each) do
    assign(:vehicle_service, VehicleService.new(
      :name => "MyString",
      :description => "MyText",
      :observation => "MyText",
      :status => false
    ))
  end

  it "renders new vehicle_service form" do
    render

    assert_select "form[action=?][method=?]", vehicle_services_path, "post" do

      assert_select "input#vehicle_service_name[name=?]", "vehicle_service[name]"

      assert_select "textarea#vehicle_service_description[name=?]", "vehicle_service[description]"

      assert_select "textarea#vehicle_service_observation[name=?]", "vehicle_service[observation]"

      assert_select "input#vehicle_service_status[name=?]", "vehicle_service[status]"
    end
  end
end
