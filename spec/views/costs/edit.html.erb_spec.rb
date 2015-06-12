require 'rails_helper'

RSpec.describe "costs/edit", type: :view do
  before(:each) do
    @cost = assign(:cost, Cost.create!(
      :value => 1.5,
      :user => nil,
      :benefit => nil
    ))
  end

  it "renders the edit cost form" do
    render

    assert_select "form[action=?][method=?]", cost_path(@cost), "post" do

      assert_select "input#cost_value[name=?]", "cost[value]"

      assert_select "input#cost_user_id[name=?]", "cost[user_id]"

      assert_select "input#cost_benefit_id[name=?]", "cost[benefit_id]"
    end
  end
end
