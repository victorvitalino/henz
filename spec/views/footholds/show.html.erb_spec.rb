require 'rails_helper'

RSpec.describe "footholds/show", type: :view do
  before(:each) do
    @foothold = assign(:foothold, Foothold.create!(
      :name => "Name",
      :local => "Local",
      :responsible => "Responsible",
      :geolocation => "Geolocation",
      :observation => "MyText",
      :affiliate => nil,
      :work => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Local/)
    expect(rendered).to match(/Responsible/)
    expect(rendered).to match(/Geolocation/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
