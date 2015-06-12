require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :value => 1.5,
      :description => "MyText",
      :status => false,
      :provider => nil,
      :payment_type => nil
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input#payment_value[name=?]", "payment[value]"

      assert_select "textarea#payment_description[name=?]", "payment[description]"

      assert_select "input#payment_status[name=?]", "payment[status]"

      assert_select "input#payment_provider_id[name=?]", "payment[provider_id]"

      assert_select "input#payment_payment_type_id[name=?]", "payment[payment_type_id]"
    end
  end
end
