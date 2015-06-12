require 'rails_helper'

RSpec.describe "work_types/edit", type: :view do
  before(:each) do
    @work_type = assign(:work_type, WorkType.create!(
      :name => "MyString",
      :status => false
    ))
  end

  it "renders the edit work_type form" do
    render

    assert_select "form[action=?][method=?]", work_type_path(@work_type), "post" do

      assert_select "input#work_type_name[name=?]", "work_type[name]"

      assert_select "input#work_type_status[name=?]", "work_type[status]"
    end
  end
end
