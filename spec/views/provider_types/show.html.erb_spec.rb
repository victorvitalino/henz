require 'rails_helper'

RSpec.describe "provider_types/show", type: :view do
  before(:each) do
    @provider_type = assign(:provider_type, ProviderType.create!(
      :name => "Name",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
