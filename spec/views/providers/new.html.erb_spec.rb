require 'rails_helper'

RSpec.describe "providers/new", type: :view do
  before(:each) do
    assign(:provider, Provider.new(
      :name => "MyString",
      :cnpj => "MyString",
      :address => "MyText",
      :telphone => "MyString",
      :fax => "MyString",
      :cep => "MyString",
      :state => nil,
      :city => nil,
      :state_number => "MyString",
      :email => "MyString",
      :contact_name => "MyString",
      :contact_telphone => "MyString",
      :contact_email => "MyString",
      :observation => "MyText",
      :work => nil,
      :affiliate => nil,
      :provider_type => nil
    ))
  end

  it "renders new provider form" do
    render

    assert_select "form[action=?][method=?]", providers_path, "post" do

      assert_select "input#provider_name[name=?]", "provider[name]"

      assert_select "input#provider_cnpj[name=?]", "provider[cnpj]"

      assert_select "textarea#provider_address[name=?]", "provider[address]"

      assert_select "input#provider_telphone[name=?]", "provider[telphone]"

      assert_select "input#provider_fax[name=?]", "provider[fax]"

      assert_select "input#provider_cep[name=?]", "provider[cep]"

      assert_select "input#provider_state_id[name=?]", "provider[state_id]"

      assert_select "input#provider_city_id[name=?]", "provider[city_id]"

      assert_select "input#provider_state_number[name=?]", "provider[state_number]"

      assert_select "input#provider_email[name=?]", "provider[email]"

      assert_select "input#provider_contact_name[name=?]", "provider[contact_name]"

      assert_select "input#provider_contact_telphone[name=?]", "provider[contact_telphone]"

      assert_select "input#provider_contact_email[name=?]", "provider[contact_email]"

      assert_select "textarea#provider_observation[name=?]", "provider[observation]"

      assert_select "input#provider_work_id[name=?]", "provider[work_id]"

      assert_select "input#provider_affiliate_id[name=?]", "provider[affiliate_id]"

      assert_select "input#provider_provider_type_id[name=?]", "provider[provider_type_id]"
    end
  end
end
