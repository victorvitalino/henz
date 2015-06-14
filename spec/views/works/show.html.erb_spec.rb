require 'rails_helper'

RSpec.describe "works/show", type: :view do
  before(:each) do
    @work = assign(:work, Work.create!(
      :name => "Name",
      :local => "Local",
      :geolocation => "Geolocation",
      :responsible => "Responsible",
      :work_type => nil,
      :affiliate => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Local/)
    expect(rendered).to match(/Geolocation/)
    expect(rendered).to match(/Responsible/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
