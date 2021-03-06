require 'rails_helper'

RSpec.describe "desk_supplies/new", type: :view do
  before(:each) do
    assign(:desk_supplie, DeskSupplie.new(
      :name => "MyString",
      :address => "MyText",
      :telphone => "MyString",
      :geolocation => "MyString",
      :city => nil,
      :state => nil
    ))
  end

  it "renders new desk_supplie form" do
    render

    assert_select "form[action=?][method=?]", desk_supplies_path, "post" do

      assert_select "input#desk_supplie_name[name=?]", "desk_supplie[name]"

      assert_select "textarea#desk_supplie_address[name=?]", "desk_supplie[address]"

      assert_select "input#desk_supplie_telphone[name=?]", "desk_supplie[telphone]"

      assert_select "input#desk_supplie_geolocation[name=?]", "desk_supplie[geolocation]"

      assert_select "input#desk_supplie_city_id[name=?]", "desk_supplie[city_id]"

      assert_select "input#desk_supplie_state_id[name=?]", "desk_supplie[state_id]"
    end
  end
end
