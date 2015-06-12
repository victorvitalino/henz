require 'rails_helper'

RSpec.describe "provider_types/new", type: :view do
  before(:each) do
    assign(:provider_type, ProviderType.new(
      :name => "MyString",
      :status => false
    ))
  end

  it "renders new provider_type form" do
    render

    assert_select "form[action=?][method=?]", provider_types_path, "post" do

      assert_select "input#provider_type_name[name=?]", "provider_type[name]"

      assert_select "input#provider_type_status[name=?]", "provider_type[status]"
    end
  end
end
