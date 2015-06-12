require 'rails_helper'

RSpec.describe "works/index", type: :view do
  before(:each) do
    assign(:works, [
      Work.create!(
        :name => "Name",
        :local => "Local",
        :geolocation => "Geolocation",
        :responsible => "Responsible",
        :work_type => nil,
        :affiliate => nil
      ),
      Work.create!(
        :name => "Name",
        :local => "Local",
        :geolocation => "Geolocation",
        :responsible => "Responsible",
        :work_type => nil,
        :affiliate => nil
      )
    ])
  end

  it "renders a list of works" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    assert_select "tr>td", :text => "Geolocation".to_s, :count => 2
    assert_select "tr>td", :text => "Responsible".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
