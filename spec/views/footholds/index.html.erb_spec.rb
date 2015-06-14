require 'rails_helper'

RSpec.describe "footholds/index", type: :view do
  before(:each) do
    assign(:footholds, [
      Foothold.create!(
        :name => "Name",
        :local => "Local",
        :responsible => "Responsible",
        :geolocation => "Geolocation",
        :observation => "MyText",
        :affiliate => nil,
        :work => nil
      ),
      Foothold.create!(
        :name => "Name",
        :local => "Local",
        :responsible => "Responsible",
        :geolocation => "Geolocation",
        :observation => "MyText",
        :affiliate => nil,
        :work => nil
      )
    ])
  end

  it "renders a list of footholds" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    assert_select "tr>td", :text => "Responsible".to_s, :count => 2
    assert_select "tr>td", :text => "Geolocation".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
