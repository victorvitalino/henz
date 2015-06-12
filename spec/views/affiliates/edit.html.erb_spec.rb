require 'rails_helper'

RSpec.describe "affiliates/edit", type: :view do
  before(:each) do
    @affiliate = assign(:affiliate, Affiliate.create!(
      :cep => "MyString",
      :responsible => "MyString",
      :geolocation => "MyString",
      :city => nil,
      :state => nil
    ))
  end

  it "renders the edit affiliate form" do
    render

    assert_select "form[action=?][method=?]", affiliate_path(@affiliate), "post" do

      assert_select "input#affiliate_cep[name=?]", "affiliate[cep]"

      assert_select "input#affiliate_responsible[name=?]", "affiliate[responsible]"

      assert_select "input#affiliate_geolocation[name=?]", "affiliate[geolocation]"

      assert_select "input#affiliate_city_id[name=?]", "affiliate[city_id]"

      assert_select "input#affiliate_state_id[name=?]", "affiliate[state_id]"
    end
  end
end
