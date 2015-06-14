require 'rails_helper'

RSpec.describe "work_types/new", type: :view do
  before(:each) do
    assign(:work_type, WorkType.new(
      :name => "MyString",
      :status => false
    ))
  end

  it "renders new work_type form" do
    render

    assert_select "form[action=?][method=?]", work_types_path, "post" do

      assert_select "input#work_type_name[name=?]", "work_type[name]"

      assert_select "input#work_type_status[name=?]", "work_type[status]"
    end
  end
end
