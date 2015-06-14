require 'rails_helper'

RSpec.describe "desk_supplies/show", type: :view do
  before(:each) do
    @desk_supplie = assign(:desk_supplie, DeskSupplie.create!(
      :name => "Name",
      :address => "MyText",
      :telphone => "Telphone",
      :geolocation => "Geolocation",
      :city => nil,
      :state => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Telphone/)
    expect(rendered).to match(/Geolocation/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
