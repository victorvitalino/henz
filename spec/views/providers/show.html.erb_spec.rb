require 'rails_helper'

RSpec.describe "providers/show", type: :view do
  before(:each) do
    @provider = assign(:provider, Provider.create!(
      :name => "Name",
      :cnpj => "Cnpj",
      :address => "MyText",
      :telphone => "Telphone",
      :fax => "Fax",
      :cep => "Cep",
      :state => nil,
      :city => nil,
      :state_number => "State Number",
      :email => "Email",
      :contact_name => "Contact Name",
      :contact_telphone => "Contact Telphone",
      :contact_email => "Contact Email",
      :observation => "MyText",
      :work => nil,
      :affiliate => nil,
      :provider_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Telphone/)
    expect(rendered).to match(/Fax/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/State Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Telphone/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
