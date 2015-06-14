require 'rails_helper'

RSpec.describe "provider_types/index", type: :view do
  before(:each) do
    assign(:provider_types, [
      ProviderType.create!(
        :name => "Name",
        :status => false
      ),
      ProviderType.create!(
        :name => "Name",
        :status => false
      )
    ])
  end

  it "renders a list of provider_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
