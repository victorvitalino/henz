require 'rails_helper'

RSpec.describe "provider_types/edit", type: :view do
  before(:each) do
    @provider_type = assign(:provider_type, ProviderType.create!(
      :name => "MyString",
      :status => false
    ))
  end

  it "renders the edit provider_type form" do
    render

    assert_select "form[action=?][method=?]", provider_type_path(@provider_type), "post" do

      assert_select "input#provider_type_name[name=?]", "provider_type[name]"

      assert_select "input#provider_type_status[name=?]", "provider_type[status]"
    end
  end
end
