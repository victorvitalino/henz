require 'rails_helper'

RSpec.describe "benefits/show", type: :view do
  before(:each) do
    @benefit = assign(:benefit, Benefit.create!(
      :name => "Name",
      :description => "MyText",
      :default_value => 1.5,
      :observation => "MyText",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
