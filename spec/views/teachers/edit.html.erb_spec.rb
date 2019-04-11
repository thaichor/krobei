require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :gender => 1
    ))
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do

      assert_select "input[name=?]", "teacher[first_name]"

      assert_select "input[name=?]", "teacher[last_name]"

      assert_select "input[name=?]", "teacher[phone]"

      assert_select "input[name=?]", "teacher[email]"

      assert_select "input[name=?]", "teacher[gender]"
    end
  end
end
