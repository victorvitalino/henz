require 'rails_helper'

RSpec.describe "works/new", type: :view do
  before(:each) do
    assign(:work, Work.new(
      :name => "MyString",
      :local => "MyString",
      :geolocation => "MyString",
      :responsible => "MyString",
      :work_type => nil,
      :affiliate => nil
    ))
  end

  it "renders new work form" do
    render

    assert_select "form[action=?][method=?]", works_path, "post" do

      assert_select "input#work_name[name=?]", "work[name]"

      assert_select "input#work_local[name=?]", "work[local]"

      assert_select "input#work_geolocation[name=?]", "work[geolocation]"

      assert_select "input#work_responsible[name=?]", "work[responsible]"

      assert_select "input#work_work_type_id[name=?]", "work[work_type_id]"

      assert_select "input#work_affiliate_id[name=?]", "work[affiliate_id]"
    end
  end
end
