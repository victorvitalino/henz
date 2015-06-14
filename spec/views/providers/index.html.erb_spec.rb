require 'rails_helper'

RSpec.describe "providers/index", type: :view do
  before(:each) do
    assign(:providers, [
      Provider.create!(
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
      ),
      Provider.create!(
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
      )
    ])
  end

  it "renders a list of providers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Telphone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "State Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Telphone".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
