require 'rails_helper'

RSpec.describe "affiliates/index", type: :view do
  before(:each) do
    assign(:affiliates, [
      Affiliate.create!(
        :cep => "Cep",
        :responsible => "Responsible",
        :geolocation => "Geolocation",
        :city => nil,
        :state => nil
      ),
      Affiliate.create!(
        :cep => "Cep",
        :responsible => "Responsible",
        :geolocation => "Geolocation",
        :city => nil,
        :state => nil
      )
    ])
  end

  it "renders a list of affiliates" do
    render
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Responsible".to_s, :count => 2
    assert_select "tr>td", :text => "Geolocation".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
