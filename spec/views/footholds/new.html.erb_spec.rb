require 'rails_helper'

RSpec.describe "footholds/new", type: :view do
  before(:each) do
    assign(:foothold, Foothold.new(
      :name => "MyString",
      :local => "MyString",
      :responsible => "MyString",
      :geolocation => "MyString",
      :observation => "MyText",
      :affiliate => nil,
      :work => nil
    ))
  end

  it "renders new foothold form" do
    render

    assert_select "form[action=?][method=?]", footholds_path, "post" do

      assert_select "input#foothold_name[name=?]", "foothold[name]"

      assert_select "input#foothold_local[name=?]", "foothold[local]"

      assert_select "input#foothold_responsible[name=?]", "foothold[responsible]"

      assert_select "input#foothold_geolocation[name=?]", "foothold[geolocation]"

      assert_select "textarea#foothold_observation[name=?]", "foothold[observation]"

      assert_select "input#foothold_affiliate_id[name=?]", "foothold[affiliate_id]"

      assert_select "input#foothold_work_id[name=?]", "foothold[work_id]"
    end
  end
end
