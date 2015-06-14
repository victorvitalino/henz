require 'rails_helper'

RSpec.describe "benefits/edit", type: :view do
  before(:each) do
    @benefit = assign(:benefit, Benefit.create!(
      :name => "MyString",
      :description => "MyText",
      :default_value => 1.5,
      :observation => "MyText",
      :status => false
    ))
  end

  it "renders the edit benefit form" do
    render

    assert_select "form[action=?][method=?]", benefit_path(@benefit), "post" do

      assert_select "input#benefit_name[name=?]", "benefit[name]"

      assert_select "textarea#benefit_description[name=?]", "benefit[description]"

      assert_select "input#benefit_default_value[name=?]", "benefit[default_value]"

      assert_select "textarea#benefit_observation[name=?]", "benefit[observation]"

      assert_select "input#benefit_status[name=?]", "benefit[status]"
    end
  end
end
