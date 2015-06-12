require 'rails_helper'

RSpec.describe "payment_types/show", type: :view do
  before(:each) do
    @payment_type = assign(:payment_type, PaymentType.create!(
      :name => "Name",
      :account => "Account",
      :bank => "Bank",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Account/)
    expect(rendered).to match(/Bank/)
    expect(rendered).to match(/false/)
  end
end
