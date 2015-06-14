require 'rails_helper'

RSpec.describe "curriculums/index", type: :view do
  before(:each) do
    assign(:curriculums, [
      Curriculum.create!(
        :name => "Name",
        :lastname => "Lastname",
        :email => "Email",
        :phone => "Phone",
        :unit => 1,
        :field => 2,
        :file => "File"
      ),
      Curriculum.create!(
        :name => "Name",
        :lastname => "Lastname",
        :email => "Email",
        :phone => "Phone",
        :unit => 1,
        :field => 2,
        :file => "File"
      )
    ])
  end

  it "renders a list of curriculums" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
  end
end
