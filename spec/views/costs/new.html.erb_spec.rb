require 'rails_helper'

RSpec.describe "costs/new", type: :view do
  before(:each) do
    assign(:cost, Cost.new(
      :value => 1.5,
      :user => nil,
      :benefit => nil
    ))
  end

  it "renders new cost form" do
    render

    assert_select "form[action=?][method=?]", costs_path, "post" do

      assert_select "input#cost_value[name=?]", "cost[value]"

      assert_select "input#cost_user_id[name=?]", "cost[user_id]"

      assert_select "input#cost_benefit_id[name=?]", "cost[benefit_id]"
    end
  end
end
