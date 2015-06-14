require 'rails_helper'

RSpec.describe "works/edit", type: :view do
  before(:each) do
    @work = assign(:work, Work.create!(
      :name => "MyString",
      :local => "MyString",
      :geolocation => "MyString",
      :responsible => "MyString",
      :work_type => nil,
      :affiliate => nil
    ))
  end

  it "renders the edit work form" do
    render

    assert_select "form[action=?][method=?]", work_path(@work), "post" do

      assert_select "input#work_name[name=?]", "work[name]"

      assert_select "input#work_local[name=?]", "work[local]"

      assert_select "input#work_geolocation[name=?]", "work[geolocation]"

      assert_select "input#work_responsible[name=?]", "work[responsible]"

      assert_select "input#work_work_type_id[name=?]", "work[work_type_id]"

      assert_select "input#work_affiliate_id[name=?]", "work[affiliate_id]"
    end
  end
end
