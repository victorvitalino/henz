require 'rails_helper'

RSpec.describe "sectors/new", type: :view do
  before(:each) do
    assign(:sector, Sector.new(
      :name => "MyString",
      :acronym => "MyString",
      :status => false
    ))
  end

  it "renders new sector form" do
    render

    assert_select "form[action=?][method=?]", sectors_path, "post" do

      assert_select "input#sector_name[name=?]", "sector[name]"

      assert_select "input#sector_acronym[name=?]", "sector[acronym]"

      assert_select "input#sector_status[name=?]", "sector[status]"
    end
  end
end
