require 'rails_helper'

RSpec.describe "sectors/show", type: :view do
  before(:each) do
    @sector = assign(:sector, Sector.create!(
      :name => "Name",
      :acronym => "Acronym",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Acronym/)
    expect(rendered).to match(/false/)
  end
end
