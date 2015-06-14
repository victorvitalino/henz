require 'rails_helper'

RSpec.describe "affiliates/show", type: :view do
  before(:each) do
    @affiliate = assign(:affiliate, Affiliate.create!(
      :cep => "Cep",
      :responsible => "Responsible",
      :geolocation => "Geolocation",
      :city => nil,
      :state => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Responsible/)
    expect(rendered).to match(/Geolocation/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
