require 'rails_helper'

RSpec.describe "vehicle_types/new", type: :view do
  before(:each) do
    assign(:vehicle_type, VehicleType.new(
      :name => "MyString",
      :description => "MyText",
      :status => false
    ))
  end

  it "renders new vehicle_type form" do
    render

    assert_select "form[action=?][method=?]", vehicle_types_path, "post" do

      assert_select "input#vehicle_type_name[name=?]", "vehicle_type[name]"

      assert_select "textarea#vehicle_type_description[name=?]", "vehicle_type[description]"

      assert_select "input#vehicle_type_status[name=?]", "vehicle_type[status]"
    end
  end
end
