require 'rails_helper'

RSpec.describe "costs/index", type: :view do
  before(:each) do
    assign(:costs, [
      Cost.create!(
        :value => 1.5,
        :user => nil,
        :benefit => nil
      ),
      Cost.create!(
        :value => 1.5,
        :user => nil,
        :benefit => nil
      )
    ])
  end

  it "renders a list of costs" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
