require 'rails_helper'

RSpec.describe "payment_types/edit", type: :view do
  before(:each) do
    @payment_type = assign(:payment_type, PaymentType.create!(
      :name => "MyString",
      :account => "MyString",
      :bank => "MyString",
      :status => false
    ))
  end

  it "renders the edit payment_type form" do
    render

    assert_select "form[action=?][method=?]", payment_type_path(@payment_type), "post" do

      assert_select "input#payment_type_name[name=?]", "payment_type[name]"

      assert_select "input#payment_type_account[name=?]", "payment_type[account]"

      assert_select "input#payment_type_bank[name=?]", "payment_type[bank]"

      assert_select "input#payment_type_status[name=?]", "payment_type[status]"
    end
  end
end
