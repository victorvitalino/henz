require 'rails_helper'

RSpec.describe "costs/show", type: :view do
  before(:each) do
    @cost = assign(:cost, Cost.create!(
      :value => 1.5,
      :user => nil,
      :benefit => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
