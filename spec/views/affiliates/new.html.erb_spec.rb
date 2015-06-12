require 'rails_helper'

RSpec.describe "affiliates/new", type: :view do
  before(:each) do
    assign(:affiliate, Affiliate.new(
      :cep => "MyString",
      :responsible => "MyString",
      :geolocation => "MyString",
      :city => nil,
      :state => nil
    ))
  end

  it "renders new affiliate form" do
    render

    assert_select "form[action=?][method=?]", affiliates_path, "post" do

      assert_select "input#affiliate_cep[name=?]", "affiliate[cep]"

      assert_select "input#affiliate_responsible[name=?]", "affiliate[responsible]"

      assert_select "input#affiliate_geolocation[name=?]", "affiliate[geolocation]"

      assert_select "input#affiliate_city_id[name=?]", "affiliate[city_id]"

      assert_select "input#affiliate_state_id[name=?]", "affiliate[state_id]"
    end
  end
end
