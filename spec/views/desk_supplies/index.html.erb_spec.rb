require 'rails_helper'

RSpec.describe "desk_supplies/index", type: :view do
  before(:each) do
    assign(:desk_supplies, [
      DeskSupplie.create!(
        :name => "Name",
        :address => "MyText",
        :telphone => "Telphone",
        :geolocation => "Geolocation",
        :city => nil,
        :state => nil
      ),
      DeskSupplie.create!(
        :name => "Name",
        :address => "MyText",
        :telphone => "Telphone",
        :geolocation => "Geolocation",
        :city => nil,
        :state => nil
      )
    ])
  end

  it "renders a list of desk_supplies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Telphone".to_s, :count => 2
    assert_select "tr>td", :text => "Geolocation".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
