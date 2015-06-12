require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :value => 1.5,
        :description => "MyText",
        :status => false,
        :provider => nil,
        :payment_type => nil
      ),
      Payment.create!(
        :value => 1.5,
        :description => "MyText",
        :status => false,
        :provider => nil,
        :payment_type => nil
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
