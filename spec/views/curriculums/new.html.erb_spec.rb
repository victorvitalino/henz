require 'rails_helper'

RSpec.describe "curriculums/new", type: :view do
  before(:each) do
    assign(:curriculum, Curriculum.new(
      :name => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :unit => 1,
      :field => 1,
      :file => "MyString"
    ))
  end

  it "renders new curriculum form" do
    render

    assert_select "form[action=?][method=?]", curriculums_path, "post" do

      assert_select "input#curriculum_name[name=?]", "curriculum[name]"

      assert_select "input#curriculum_lastname[name=?]", "curriculum[lastname]"

      assert_select "input#curriculum_email[name=?]", "curriculum[email]"

      assert_select "input#curriculum_phone[name=?]", "curriculum[phone]"

      assert_select "input#curriculum_unit[name=?]", "curriculum[unit]"

      assert_select "input#curriculum_field[name=?]", "curriculum[field]"

      assert_select "input#curriculum_file[name=?]", "curriculum[file]"
    end
  end
end
