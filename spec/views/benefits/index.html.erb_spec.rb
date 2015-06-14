require 'rails_helper'

RSpec.describe "benefits/index", type: :view do
  before(:each) do
    assign(:benefits, [
      Benefit.create!(
        :name => "Name",
        :description => "MyText",
        :default_value => 1.5,
        :observation => "MyText",
        :status => false
      ),
      Benefit.create!(
        :name => "Name",
        :description => "MyText",
        :default_value => 1.5,
        :observation => "MyText",
        :status => false
      )
    ])
  end

  it "renders a list of benefits" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
