require 'rails_helper'

RSpec.describe "sectors/index", type: :view do
  before(:each) do
    assign(:sectors, [
      Sector.create!(
        :name => "Name",
        :acronym => "Acronym",
        :status => false
      ),
      Sector.create!(
        :name => "Name",
        :acronym => "Acronym",
        :status => false
      )
    ])
  end

  it "renders a list of sectors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Acronym".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
