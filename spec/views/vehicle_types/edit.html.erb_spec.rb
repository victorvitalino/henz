require 'rails_helper'

RSpec.describe "vehicle_types/edit", type: :view do
  before(:each) do
    @vehicle_type = assign(:vehicle_type, VehicleType.create!(
      :name => "MyString",
      :description => "MyText",
      :status => false
    ))
  end

  it "renders the edit vehicle_type form" do
    render

    assert_select "form[action=?][method=?]", vehicle_type_path(@vehicle_type), "post" do

      assert_select "input#vehicle_type_name[name=?]", "vehicle_type[name]"

      assert_select "textarea#vehicle_type_description[name=?]", "vehicle_type[description]"

      assert_select "input#vehicle_type_status[name=?]", "vehicle_type[status]"
    end
  end
end
